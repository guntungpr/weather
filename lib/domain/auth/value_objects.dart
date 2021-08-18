import 'package:dartz/dartz.dart';
import 'package:weather/domain/core/failures.dart';
import 'package:weather/domain/core/validators.dart';
import 'package:weather/domain/core/value_objects.dart';

class Email extends ValueObjects<String> {
  final Either<ValueFailure<String>, String> value;

  factory Email(String input) {
    return Email._(
      validateEmail(input),
    );
  }
  const Email._(this.value);
}

class Password extends ValueObjects<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }
  const Password._(this.value);
}
