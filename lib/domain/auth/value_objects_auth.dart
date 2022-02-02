import 'package:fpdart/fpdart.dart';
import 'package:weather/domain/core/failures/string_failures.dart';
import 'package:weather/domain/core/validators.dart';
import 'package:weather/domain/objects/string_objects.dart';

class Email extends StringObject {
  @override
  final Either<StringFailure, String> value;

  factory Email(String input) {
    return Email._(
      ValueValidators.validateStringNotEmpty(input),
    );
  }
  const Email._(this.value);
}

class Password extends StringObject {
  @override
  final Either<StringFailure, String> value;

  factory Password(String input) {
    return Password._(
      ValueValidators.validateStringNotEmpty(input),
    );
  }
  const Password._(this.value);
}
