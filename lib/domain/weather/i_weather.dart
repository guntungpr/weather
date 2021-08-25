import 'package:dartz/dartz.dart';
import 'package:weather/domain/weather/weather_failure.dart';
import 'package:weather/infrastructure/weather/weather_model.dart';

// jembatan antara application dan infrastructure
abstract class IWeather {
  Future<Either<WeatherFailure, WeatherModel>> getWeather(String city);
}
