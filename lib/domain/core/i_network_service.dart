import 'package:dio/dio.dart';

abstract class INetworkService {
  Future<Response> dioResponse({
    required bool method,
    required String path,
    required Map<String, dynamic> parameter,
  });
}
