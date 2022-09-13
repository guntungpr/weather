// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:code_id_network/code_id_network.dart' as _i19;
import 'package:dio/dio.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i14;

import 'application/auth/profile/profile_bloc.dart' as _i15;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i16;
import 'application/home/home_bloc.dart' as _i4;
import 'application/weather/weather_bloc.dart' as _i18;
import 'domain/auth/i_auth_repository.dart' as _i5;
import 'domain/core/i_network_service.dart' as _i7;
import 'domain/profile/i_profile_repository.dart' as _i10;
import 'domain/weather/i_weather.dart' as _i12;
import 'infrastructure/auth/auth_repository.dart' as _i6;
import 'infrastructure/core/network_service.dart' as _i8;
import 'infrastructure/core/register_module.dart' as _i20;
import 'infrastructure/profile/profile_repository.dart' as _i11;
import 'infrastructure/weather/weather_repository.dart' as _i13;
import 'presentation/routers/routers.dart' as _i3;
import 'simple_bloc_delegate.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.AppRouter>(() => firebaseInjectableModule.appRouter);
  gh.factory<_i4.HomeBloc>(() => _i4.HomeBloc());
  gh.lazySingleton<_i5.IAuthRepository>(() => _i6.AuthRepository());
  gh.lazySingleton<_i7.INetworkService>(
      () => _i8.NetworkService(get<_i9.Dio>()));
  gh.lazySingleton<_i10.IProfileRepository>(() => _i11.ProfileRepository());
  gh.lazySingleton<_i12.IWeather>(
      () => _i13.WeatherRepository(get<_i7.INetworkService>()));
  gh.lazySingleton<_i14.Logger>(() => firebaseInjectableModule.logger);
  gh.factory<_i15.ProfileBloc>(
      () => _i15.ProfileBloc(get<_i10.IProfileRepository>()));
  gh.factory<_i16.SignInFormBloc>(
      () => _i16.SignInFormBloc(get<_i5.IAuthRepository>()));
  gh.factory<_i17.SimpleBlocObserver>(
      () => _i17.SimpleBlocObserver(get<_i14.Logger>()));
  gh.factory<String>(() => firebaseInjectableModule.baseUrl,
      instanceName: 'baseUrl');
  gh.factory<_i18.WeatherBloc>(() => _i18.WeatherBloc(get<_i12.IWeather>()));
  gh.lazySingleton<_i19.Dio>(
      () => firebaseInjectableModule.dio(get<String>(instanceName: 'baseUrl')));
  await gh.lazySingletonAsync<_i19.INetworkService>(
      () => firebaseInjectableModule.network(
          baseUrl: get<String>(instanceName: 'baseUrl')),
      preResolve: true);
  return get;
}

class _$FirebaseInjectableModule extends _i20.FirebaseInjectableModule {}
