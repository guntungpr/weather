import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/domain/weather/i_weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWeather _iWeather;
  WeatherBloc(this._iWeather) : super(WeatherState.initial());

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    yield* event.map(
      inputCity: (e) async* {
        yield state.copyWith(
          city: e.inputCity,
        );
      },
      searchWeather: (e) async* {
        yield state.copyWith(isLoading: true);
        final failureOrSuccess = await _iWeather.getWeather(state.city);
        yield state.copyWith(
          city: failureOrSuccess.fold(
            (l) => '',
            (r) => r.name,
          ),
          country: failureOrSuccess.fold(
            (l) => '',
            (r) => r.sys.country,
          ),
          lat: failureOrSuccess.fold(
            (l) => 0,
            (r) => r.coord.lat,
          ),
          long: failureOrSuccess.fold(
            (l) => 0,
            (r) => r.coord.lon,
          ),
          weather: failureOrSuccess.fold(
            (l) => '',
            (r) => r.weather[0].main,
          ),
          weatherDetail: failureOrSuccess.fold(
            (l) => '',
            (r) => r.weather[0].description,
          ),
          temp: failureOrSuccess.fold(
            (l) => 0,
            (r) => double.parse((r.main.temp - 273.15).toStringAsFixed(1)),
          ),
          isLoading: false,
        );
      },
    );
  }
}
