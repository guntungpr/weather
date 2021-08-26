part of 'weather_bloc.dart';

@freezed
abstract class WeatherState with _$WeatherState {
  const factory WeatherState({
    required Option<Either<WeatherFailure, WeatherModel>>
        optionFailureOrSuccess,
    required String city,
    required bool isLoading,
    required KelvinToCelcius kelvinToCelcius,
  }) = _WeatherState;

  factory WeatherState.initial() => WeatherState(
        optionFailureOrSuccess: none(),
        city: '',
        isLoading: false,
        kelvinToCelcius: KelvinToCelcius(0),
      );
}
