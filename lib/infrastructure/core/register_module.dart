// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:code_id_network/code_id_network.dart';
import 'package:dio/adapter.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart' as log;
import 'package:weather/presentation/routers/routers.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  AppRouter get appRouter => AppRouter();

  @Named('baseUrl')
  String get baseUrl => 'https://jsonplaceholder.typicode.com';

  @preResolve
  @lazySingleton
  Future<INetworkService> network({
    @Named('baseUrl') required String baseUrl,
  }) async {
    final _client = NetworkService(baseUrl: baseUrl);

    _client.addInterceptors(
      [
        LoggerInterceptor(
          requestHeader: true,
        ),
      ],
    );

    return _client;
  }

  @lazySingleton
  Dio dio(@Named('baseUrl') String baseUrl) {
    final Dio _dio = Dio();
    final BaseOptions options = BaseOptions(
      connectTimeout: 120000,
      receiveTimeout: 60000,
      sendTimeout: 60000,
      baseUrl: baseUrl,
    );
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
      client.badCertificateCallback = (X509Certificate cert, String host, int port) {
        return baseUrl.contains(host);
      };
      return client;
    };
    // options.
    _dio.options = options;

    return _dio;
  }

  @lazySingleton
  log.Logger get logger => log.Logger();
}
