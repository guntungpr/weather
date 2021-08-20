// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i13;
import 'application/weather/weather_bloc.dart' as _i10;
import 'domain/auth/i_auth_facade.dart' as _i11;
import 'domain/core/i_network_service.dart' as _i6;
import 'domain/weather/i_weather.dart' as _i8;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i12;
import 'infrastructure/core/firebase_injectable_module.dart' as _i14;
import 'infrastructure/core/network_service.dart' as _i7;
import 'infrastructure/weather/weather_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.factory<String>(() => firebaseInjectableModule.baseUrl,
      instanceName: 'baseUrl');
  gh.lazySingleton<_i5.Dio>(
      () => firebaseInjectableModule.dio(get<String>(instanceName: 'baseUrl')));
  gh.lazySingleton<_i6.INetworkService>(
      () => _i7.NetworkService(get<_i5.Dio>()));
  gh.lazySingleton<_i8.IWeather>(
      () => _i9.WeatherRepository(get<_i6.INetworkService>()));
  gh.factory<_i10.WeatherBloc>(() => _i10.WeatherBloc(get<_i8.IWeather>()));
  gh.lazySingleton<_i11.IAuthFacade>(() => _i12.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(),
      get<_i4.GoogleSignIn>(),
      get<_i6.INetworkService>()));
  gh.factory<_i13.SignInFormBloc>(
      () => _i13.SignInFormBloc(get<_i11.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i14.FirebaseInjectableModule {}
