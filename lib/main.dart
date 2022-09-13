import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:weather/application/weather/weather_bloc.dart';
import 'package:weather/injection.dart';
import 'package:weather/presentation/routers/routers.dart';
import 'package:weather/simple_bloc_delegate.dart';

// ignore: avoid_void_async
void main() async {
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);

  BlocOverrides.runZoned(
    () => runApp(MyApp()),
    blocObserver: getIt<SimpleBlocObserver>(),
  );

  // runApp(AppWidget());
}

final _appRouter = getIt<AppRouter>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: GestureDetector(
        onTap: () {
          final FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        ),
      ),
    );
  }
}
