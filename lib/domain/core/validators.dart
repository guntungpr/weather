import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:weather/domain/core/failures/failures.dart';
import 'package:weather/domain/core/failures/string_failures.dart';

Either<ValueFailure<String>, String> validateEmail(String input) {
  const emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

// ignore: avoid_classes_with_only_static_members
class ValueValidators {
  static Either<StringFailure, String> validateMaxStringLength(
    String input,
    int maxLength,
  ) {
    if (input.length <= maxLength) {
      return right(input);
    } else {
      return left(
        StringFailure.exceedingLength(failedValue: input, max: maxLength),
      );
    }
  }

  static Either<StringFailure, String> validateMinStringLength(
    String input,
    int minLength,
  ) {
    if (input.length >= minLength) {
      return right(input);
    } else {
      return left(
        StringFailure.lengthTooShort(failedValue: input, min: minLength),
      );
    }
  }

  static Either<StringFailure, String> validateExactStringLength(
    String input,
    int length,
  ) {
    if (input.length == length) {
      return right(input);
    } else {
      return left(
        StringFailure.wrongLength(failedValue: input, length: length),
      );
    }
  }

  static Either<StringFailure, String> validateStringNotEmpty(String input) {
    if (input.isNotEmpty) {
      return right(input);
    } else {
      return left(StringFailure.empty(failedValue: input));
    }
  }

  static Either<ValueFailure<String>, String> validateSingleLine(String input) {
    if (input.contains('\n')) {
      return left(ValueFailure.multiline(failedValue: input));
    } else {
      return right(input);
    }
  }

  static Either<ValueFailure<IList<T>>, IList<T>> validateMaxListLength<T>(
    IList<T> input,
    int maxLength,
  ) {
    if (input.length <= maxLength) {
      return right(input);
    } else {
      return left(ValueFailure.listTooLong(
        failedValue: input,
        max: maxLength,
      ));
    }
  }

  static Either<ValueFailure<IList<T>>, IList<T>> validateMinListLength<T>(
    IList<T> input,
    int minLength,
  ) {
    if (input.length >= minLength) {
      return right(input);
    } else {
      return left(ValueFailure.listTooShort(
        failedValue: input,
        min: minLength,
      ));
    }
  }

  static Either<ValueFailure<T>, T> validateWholeNumber<T>(T input) {
    // if it's failed to be parsed
    // means it is not an Integer
    final _parsedInput = int.tryParse(input.toString());
    if (_parsedInput != null) {
      if (_parsedInput >= 0) {
        return right(input);
      } else {
        return left(ValueFailure.notPositiveNumber(failedValue: input));
      }
    } else {
      return left(ValueFailure.empty(failedValue: input));
    }
  }

  static Either<ValueFailure<T>, T> validatePositiveInteger<T>(T input) {
    // if it's failed to be parsed
    // means it is not an Integer
    final _parsedInput = int.tryParse(input.toString());
    if (_parsedInput != null) {
      if (_parsedInput > 0) {
        return right(input);
      } else {
        return left(ValueFailure.notPositiveNumber(failedValue: input));
      }
    } else {
      return left(ValueFailure.empty(failedValue: input));
    }
  }

  static Either<ValueFailure<T>, T> validatePositiveDecimal<T>(T input) {
    // if it's failed to be parsed
    // means it is not a Decimal
    final _parsedInput = double.tryParse(input.toString());
    if (_parsedInput != null) {
      if (_parsedInput > 0) {
        return right(input);
      } else {
        return left(ValueFailure.notPositiveNumber(failedValue: input));
      }
    } else {
      return left(ValueFailure.empty(failedValue: input));
    }
  }

  static Either<StringFailure, String> validatePersonName(String input) {
    final _allowedRegex = RegExp(r'^[a-zA-Z ]+$');
    if (input.contains(_allowedRegex)) {
      return right(input);
    } else {
      return left(
        StringFailure.invalidPersonName(failedValue: input),
      );
    }
  }

  static Either<ValueFailure<double>, double> validateDuration(double duration) {
    if (duration <= 0) {
      return left(const ValueFailure.emptyObject());
    }
    return right(duration);
  }

  static Either<ValueFailure<double>, double> validateBreak(double overtimeBreak) {
    if (overtimeBreak < 0) {
      return left(const ValueFailure.emptyObject());
    }
    return right(overtimeBreak);
  }
}
