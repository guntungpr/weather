import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/domain/weather/i_weather.dart';
import 'package:weather/domain/weather/weather_failure.dart';
import 'package:weather/infrastructure/weather/weather_model.dart';

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
          optionFailureOrSuccess: some(failureOrSuccess),
          isLoading: false,
        );
      },
    );
  }
}
