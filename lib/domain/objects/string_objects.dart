import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/domain/core/errors.dart';
import 'package:weather/domain/core/failures/string_failures.dart';
import 'package:weather/domain/core/validators.dart';

@immutable
abstract class StringObject {
  const StringObject();
  Either<StringFailure, String> get value;

  /// Throws [UnexpectedStringError] containing the [StringFailure]
  String getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedStringError(f), id);
  }

  String? getOrNull() {
    return value.fold((f) => null, id);
  }

  String getOrEmpty() {
    return value.fold((f) => '', id);
  }

  String getOrFailureText() => value.fold(
      (f) => f.maybeMap(
          empty: (_) => '',
          lengthTooShort: (a) => a.failedValue ?? '',
          exceedingLength: (a) => a.failedValue ?? '',
          wrongLength: (a) => a.failedValue ?? '',
          invalidEmail: (a) => a.failedValue ?? '',
          invalidPhone: (a) => a.failedValue ?? '',
          invalidPersonName: (a) => a.failedValue ?? '',
          orElse: () {
            throw 'Only accept StringObject';
          }),
      id);

  Either<StringFailure, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  // ignore: avoid_renaming_method_parameters
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is StringObject && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class Name extends StringObject {
  @override
  final Either<StringFailure, String> value;

  factory Name(String input) {
    return Name._(ValueValidators.validateStringNotEmpty(input));
  }

  const Name._(this.value);
}

class PersonName extends StringObject {
  @override
  final Either<StringFailure, String> value;

  factory PersonName(String input) {
    return PersonName._(ValueValidators.validateStringNotEmpty(input).flatMap(ValueValidators.validatePersonName));
  }

  const PersonName._(this.value);
}

class Address extends StringObject {
  @override
  final Either<StringFailure, String> value;

  factory Address(String input) {
    return Address._(ValueValidators.validateStringNotEmpty(input));
  }

  const Address._(this.value);
}

class ImageUrl extends StringObject {
  @override
  final Either<StringFailure, String> value;

  factory ImageUrl(String input) {
    return ImageUrl._(ValueValidators.validateStringNotEmpty(input));
  }

  const ImageUrl._(this.value);
}
