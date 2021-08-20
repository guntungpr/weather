part of 'weather_bloc.dart';

@freezed
abstract class WeatherState with _$WeatherState {
  const factory WeatherState({
    required String city,
    required String country,
    required double lat,
    required double long,
    required String weather,
    required String weatherDetail,
    required double temp,
    required bool isLoading,
  }) = _WeatherState;

  factory WeatherState.initial() => const WeatherState(
        city: 'Surabaya',
        country: 'Indonesia',
        lat: 0.0,
        long: 0.0,
        weather: 'Sunny',
        weatherDetail: 'Sunny',
        temp: 0.0,
        isLoading: false,
      );
}
