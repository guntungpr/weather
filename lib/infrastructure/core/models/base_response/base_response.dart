import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/infrastructure/core/models/base_response/meta.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

@freezed
class BaseResponse with _$BaseResponse {
  factory BaseResponse({
    dynamic data,
    String? error,
    required Meta meta,
  }) = _BaseResponse;

  factory BaseResponse.fromJson(Map<String, dynamic> json) => _$BaseResponseFromJson(json);
}
