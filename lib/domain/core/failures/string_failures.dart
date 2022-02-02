import 'package:freezed_annotation/freezed_annotation.dart';

part 'string_failures.freezed.dart';

@freezed
class StringFailure with _$StringFailure {
  const factory StringFailure.empty({
    required String? failedValue,
  }) = Empty;
  const factory StringFailure.exceedingLength({
    required String? failedValue,
    required int max,
  }) = ExceedingLength;
  const factory StringFailure.lengthTooShort({
    required String? failedValue,
    required int min,
  }) = TooShort;
  const factory StringFailure.wrongLength({
    required String? failedValue,
    required int length,
  }) = WrongLength;
  const factory StringFailure.invalidPersonName({
    required String? failedValue,
  }) = InvalidPersonName;
  const factory StringFailure.invalidPhone({
    required String? failedValue,
  }) = InvalidPhone;
  const factory StringFailure.invalidEmail({
    required String? failedValue,
  }) = InvalidEmail;
  const factory StringFailure.invalidDateTime({
    required DateTime failedValue,
    required String pattern,
  }) = InvalidDateTime;
}
