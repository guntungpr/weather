// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return WeatherModel(
    coord: Coord.fromJson(json['coord'] as Map<String, dynamic>),
    weather: (json['weather'] as List<dynamic>)
        .map((e) => Weather.fromJson(e as Map<String, dynamic>))
        .toList(),
    main: Main.fromJson(json['main'] as Map<String, dynamic>),
    wind: Wind.fromJson(json['wind'] as Map<String, dynamic>),
    sys: Sys.fromJson(json['sys'] as Map<String, dynamic>),
    dt: json['dt'] as int,
    timezone: json['timezone'] as int,
    name: json['name'] as String,
    cod: json['cod'] as int,
  );
}

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'coord': instance.coord,
      'weather': instance.weather,
      'main': instance.main,
      'wind': instance.wind,
      'sys': instance.sys,
      'dt': instance.dt,
      'timezone': instance.timezone,
      'name': instance.name,
      'cod': instance.cod,
    };

Coord _$CoordFromJson(Map<String, dynamic> json) {
  return Coord(
    lat: (json['lat'] as num).toDouble(),
    lon: (json['lon'] as num).toDouble(),
  );
}

Map<String, dynamic> _$CoordToJson(Coord instance) => <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return Weather(
    id: json['id'] as int,
    main: json['main'] as String,
    description: json['description'] as String,
    icon: json['icon'] as String,
  );
}

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

Main _$MainFromJson(Map<String, dynamic> json) {
  return Main(
    temp: (json['temp'] as num).toDouble(),
    feels_like: (json['feels_like'] as num).toDouble(),
    temp_min: (json['temp_min'] as num).toDouble(),
    temp_max: (json['temp_max'] as num).toDouble(),
    pressure: json['pressure'] as int,
    humidity: json['humidity'] as int,
  );
}

Map<String, dynamic> _$MainToJson(Main instance) => <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feels_like,
      'temp_min': instance.temp_min,
      'temp_max': instance.temp_max,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };

Wind _$WindFromJson(Map<String, dynamic> json) {
  return Wind(
    speed: (json['speed'] as num).toDouble(),
    deg: (json['deg'] as num).toDouble(),
  );
}

Map<String, dynamic> _$WindToJson(Wind instance) => <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
    };

Sys _$SysFromJson(Map<String, dynamic> json) {
  return Sys(
    country: json['country'] as String,
    sunrise: json['sunrise'] as int,
    sunset: json['sunset'] as int,
  );
}

Map<String, dynamic> _$SysToJson(Sys instance) => <String, dynamic>{
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
