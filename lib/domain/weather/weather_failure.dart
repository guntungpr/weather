import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_failure.freezed.dart';

// kondisi failure yg mungkin terjadi
@freezed
class WeatherFailure with _$WeatherFailure {
  const factory WeatherFailure.failed() = _Failed;
}
