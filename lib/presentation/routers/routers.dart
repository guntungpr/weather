import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:weather/presentation/home/home_page.dart';
import 'package:weather/presentation/home/home_wrapper_page.dart';
import 'package:weather/presentation/sign_in/sign_in_page.dart';

part 'routers.gr.dart';

// final List<GetPage> routers = [
//   GetPage(
//     name: Routers.login,
//     page: () => SignInPage(),
//   ),
//   GetPage(
//     name: Routers.weather,
//     page: () => BlocProvider(
//       create: (context) => getIt<WeatherBloc>(),
//       child: WeatherForm(),
//     ),
//   ),
// ];

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/', page: SignInPage),
    AutoRoute(
      path: 'HomeRouter',
      page: HomeWrapperPage,
      children: [
        AutoRoute(path: '', page: HomePage),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
