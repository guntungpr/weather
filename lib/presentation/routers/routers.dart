import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:weather/application/weather/weather_bloc.dart';
import 'package:weather/injection.dart';
import 'package:weather/presentation/sign_in/sign_in_page.dart';
import 'package:weather/presentation/weather/widgets/weather_form.dart';

class Routers {
  static const String login = '/';
  static const String weather = '/weather';

  final List<GetPage> routers = [
    GetPage(
      name: Routers.login,
      page: () => SignInPage(),
    ),
    GetPage(
      name: Routers.weather,
      page: () => BlocProvider(
        create: (context) => getIt<WeatherBloc>(),
        child: WeatherForm(),
      ),
    ),
  ];
}
