// ignore_for_file: require_trailing_commas, import_of_legacy_library_into_null_safe

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:weather/domain/weather/i_weather.dart';
import 'package:weather/domain/weather/value_objects_weather.dart';
import 'package:weather/domain/weather/weather_failure.dart';
import 'package:weather/infrastructure/weather/weather_model.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWeather _iWeather;
  WeatherBloc(this._iWeather) : super(WeatherState.initial()) {
    on<WeatherEvent>((event, emit) async {
      await event.map(
        initial: (e) async {
          emit(state.copyWith(isLoading: true));
          if (state.city == '') {
            await Permission.locationWhenInUse.request().then(
              (status) async {
                if (status.isGranted) {
                  final Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
                  final addresses = await Geocoder.local.findAddressesFromCoordinates(Coordinates(position.latitude, position.longitude));

                  add(WeatherEvent.inputCity(addresses.first.countryName));
                }
              },
            );
          } else {
            add(WeatherEvent.inputCity(state.city));
          }
          emit(state.copyWith(isLoading: false));
        },
        inputCity: (e) async {
          emit(state.copyWith(city: e.inputCity));
          add(const WeatherEvent.searchWeather());
        },
        searchWeather: (e) async {
          emit(state.copyWith(isLoading: true));
          final failureOrSuccess = await _iWeather.getWeather(state.city);
          emit(state.copyWith(
            optionFailureOrSuccess: optionOf(failureOrSuccess),
            isLoading: false,
          ));
        },
        calculateTemp: (e) async {
          emit(state.copyWith(
            kelvinToCelcius: KelvinToCelcius(e.temp),
          ));
        },
      );
    });
  }
}
