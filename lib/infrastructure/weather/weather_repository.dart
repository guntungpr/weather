import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/domain/core/i_network_service.dart';
import 'package:weather/domain/weather/i_weather.dart';
import 'package:weather/domain/weather/weather_failure.dart';
import 'package:weather/infrastructure/weather/weather_model.dart';

@LazySingleton(as: IWeather)
class WeatherRepository implements IWeather {
  WeatherRepository(this._network);
  final INetworkService _network;

  @override
  Future<Either<WeatherFailure, WeatherModel>> getWeather(String city) async {
    try {
      final Map<String, dynamic> _body = {
        'q': city,
        'appid': 'c91143f4bb10c4bd2fbf791523768bad',
      };
      final response = await _network.dioResponse(
        method: false,
        path: 'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=c91143f4bb10c4bd2fbf791523768bad',
        parameter: _body,
      );
      final Map<String, dynamic> model = response.data as Map<String, dynamic>;
      final data = WeatherModel.fromJson(model);
      return right(data);
    } catch (e) {
      return left(const WeatherFailure.failed());
    }
  }
}
