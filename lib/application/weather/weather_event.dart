part of 'weather_bloc.dart';

@freezed
abstract class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.inputCity(String inputCity) = InputCity;
  const factory WeatherEvent.searchWeather() = SearchWeather;
  const factory WeatherEvent.calculateTemp(double temp) = CalculateTemp;
}
