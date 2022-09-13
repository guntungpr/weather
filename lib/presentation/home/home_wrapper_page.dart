import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/application/auth/profile/profile_bloc.dart';
import 'package:weather/application/home/home_bloc.dart';
import 'package:weather/application/weather/weather_bloc.dart';
import 'package:weather/injection.dart';

class HomeWrapperPage extends StatelessWidget {
  const HomeWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<HomeBloc>()..add(const HomeEvent.started()),
          ),
          BlocProvider(
            create: (context) => getIt<WeatherBloc>()..add(const WeatherEvent.initial()),
          ),
          BlocProvider(
            create: (context) => getIt<ProfileBloc>()..add(const ProfileEvent.started()),
          ),
        ],
        child: const AutoRouter(),
      ),
    );
  }
}
