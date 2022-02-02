// ignore_for_file: require_trailing_commas

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
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
        inputCity: (e) async {
          emit(state.copyWith(
            city: e.inputCity,
          ));
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
