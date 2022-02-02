import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.empty({
    required T? failedValue,
  }) = Empty<T>;
  const factory ValueFailure.notPositiveNumber({
    required T? failedValue,
  }) = NotPositiveNumber<T>;
  const factory ValueFailure.multiline({
    required T? failedValue,
  }) = Multiline<T>;
  const factory ValueFailure.listTooLong({
    required T failedValue,
    required int max,
  }) = ListTooLong<T>;
  const factory ValueFailure.listTooShort({
    required T failedValue,
    required int min,
  }) = ListTooShort<T>;
  const factory ValueFailure.unregisteredPhone({
    required T? failedValue,
  }) = UnregisteredPhone<T>;
  const factory ValueFailure.invalidObject({
    required T? failedValue,
  }) = InvalidObject<T>;
  const factory ValueFailure.emptyObject() = EmptyObject<T>;
  const factory ValueFailure.shortToken({
    required T? failedValue,
  }) = ShortToken<T>;
  const factory ValueFailure.exceedingBalance({required double failedValue, required double maxBalance}) = ExceedBalance<T>;
  const factory ValueFailure.noteExceed({required T? failedValue}) = NoteExceed<T>;
  const factory ValueFailure.confirmationNotMatch({required T? failedValue}) = ConfirmationNotMatch<T>;
}
