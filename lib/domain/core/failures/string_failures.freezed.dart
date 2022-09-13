// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'string_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StringFailureTearOff {
  const _$StringFailureTearOff();

  Empty empty({required String? failedValue}) {
    return Empty(
      failedValue: failedValue,
    );
  }

  ExceedingLength exceedingLength(
      {required String? failedValue, required int max}) {
    return ExceedingLength(
      failedValue: failedValue,
      max: max,
    );
  }

  TooShort lengthTooShort({required String? failedValue, required int min}) {
    return TooShort(
      failedValue: failedValue,
      min: min,
    );
  }

  WrongLength wrongLength({required String? failedValue, required int length}) {
    return WrongLength(
      failedValue: failedValue,
      length: length,
    );
  }

  InvalidPersonName invalidPersonName({required String? failedValue}) {
    return InvalidPersonName(
      failedValue: failedValue,
    );
  }

  InvalidPhone invalidPhone({required String? failedValue}) {
    return InvalidPhone(
      failedValue: failedValue,
    );
  }

  InvalidEmail invalidEmail({required String? failedValue}) {
    return InvalidEmail(
      failedValue: failedValue,
    );
  }

  InvalidDateTime invalidDateTime(
      {required DateTime failedValue, required String pattern}) {
    return InvalidDateTime(
      failedValue: failedValue,
      pattern: pattern,
    );
  }
}

/// @nodoc
const $StringFailure = _$StringFailureTearOff();

/// @nodoc
mixin _$StringFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) empty,
    required TResult Function(String? failedValue, int max) exceedingLength,
    required TResult Function(String? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue, int length) wrongLength,
    required TResult Function(String? failedValue) invalidPersonName,
    required TResult Function(String? failedValue) invalidPhone,
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue, int max)? exceedingLength,
    TResult Function(String? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue, int length)? wrongLength,
    TResult Function(String? failedValue)? invalidPersonName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue, int max)? exceedingLength,
    TResult Function(String? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue, int length)? wrongLength,
    TResult Function(String? failedValue)? invalidPersonName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(ExceedingLength value) exceedingLength,
    required TResult Function(TooShort value) lengthTooShort,
    required TResult Function(WrongLength value) wrongLength,
    required TResult Function(InvalidPersonName value) invalidPersonName,
    required TResult Function(InvalidPhone value) invalidPhone,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidDateTime value) invalidDateTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ExceedingLength value)? exceedingLength,
    TResult Function(TooShort value)? lengthTooShort,
    TResult Function(WrongLength value)? wrongLength,
    TResult Function(InvalidPersonName value)? invalidPersonName,
    TResult Function(InvalidPhone value)? invalidPhone,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidDateTime value)? invalidDateTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ExceedingLength value)? exceedingLength,
    TResult Function(TooShort value)? lengthTooShort,
    TResult Function(WrongLength value)? wrongLength,
    TResult Function(InvalidPersonName value)? invalidPersonName,
    TResult Function(InvalidPhone value)? invalidPhone,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidDateTime value)? invalidDateTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringFailureCopyWith<$Res> {
  factory $StringFailureCopyWith(
          StringFailure value, $Res Function(StringFailure) then) =
      _$StringFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$StringFailureCopyWithImpl<$Res>
    implements $StringFailureCopyWith<$Res> {
  _$StringFailureCopyWithImpl(this._value, this._then);

  final StringFailure _value;
  // ignore: unused_field
  final $Res Function(StringFailure) _then;
}

/// @nodoc
abstract class $EmptyCopyWith<$Res> {
  factory $EmptyCopyWith(Empty value, $Res Function(Empty) then) =
      _$EmptyCopyWithImpl<$Res>;
  $Res call({String? failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<$Res> extends _$StringFailureCopyWithImpl<$Res>
    implements $EmptyCopyWith<$Res> {
  _$EmptyCopyWithImpl(Empty _value, $Res Function(Empty) _then)
      : super(_value, (v) => _then(v as Empty));

  @override
  Empty get _value => super._value as Empty;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Empty(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Empty implements Empty {
  const _$Empty({required this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'StringFailure.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Empty &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<Empty> get copyWith =>
      _$EmptyCopyWithImpl<Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) empty,
    required TResult Function(String? failedValue, int max) exceedingLength,
    required TResult Function(String? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue, int length) wrongLength,
    required TResult Function(String? failedValue) invalidPersonName,
    required TResult Function(String? failedValue) invalidPhone,
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue, int max)? exceedingLength,
    TResult Function(String? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue, int length)? wrongLength,
    TResult Function(String? failedValue)? invalidPersonName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue, int max)? exceedingLength,
    TResult Function(String? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue, int length)? wrongLength,
    TResult Function(String? failedValue)? invalidPersonName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(ExceedingLength value) exceedingLength,
    required TResult Function(TooShort value) lengthTooShort,
    required TResult Function(WrongLength value) wrongLength,
    required TResult Function(InvalidPersonName value) invalidPersonName,
    required TResult Function(InvalidPhone value) invalidPhone,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidDateTime value) invalidDateTime,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ExceedingLength value)? exceedingLength,
    TResult Function(TooShort value)? lengthTooShort,
    TResult Function(WrongLength value)? wrongLength,
    TResult Function(InvalidPersonName value)? invalidPersonName,
    TResult Function(InvalidPhone value)? invalidPhone,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidDateTime value)? invalidDateTime,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ExceedingLength value)? exceedingLength,
    TResult Function(TooShort value)? lengthTooShort,
    TResult Function(WrongLength value)? wrongLength,
    TResult Function(InvalidPersonName value)? invalidPersonName,
    TResult Function(InvalidPhone value)? invalidPhone,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidDateTime value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements StringFailure {
  const factory Empty({required String? failedValue}) = _$Empty;

  String? get failedValue;
  @JsonKey(ignore: true)
  $EmptyCopyWith<Empty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<$Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength value, $Res Function(ExceedingLength) then) =
      _$ExceedingLengthCopyWithImpl<$Res>;
  $Res call({String? failedValue, int max});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<$Res>
    extends _$StringFailureCopyWithImpl<$Res>
    implements $ExceedingLengthCopyWith<$Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength _value, $Res Function(ExceedingLength) _then)
      : super(_value, (v) => _then(v as ExceedingLength));

  @override
  ExceedingLength get _value => super._value as ExceedingLength;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(ExceedingLength(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLength implements ExceedingLength {
  const _$ExceedingLength({required this.failedValue, required this.max});

  @override
  final String? failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'StringFailure.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExceedingLength &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<ExceedingLength> get copyWith =>
      _$ExceedingLengthCopyWithImpl<ExceedingLength>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) empty,
    required TResult Function(String? failedValue, int max) exceedingLength,
    required TResult Function(String? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue, int length) wrongLength,
    required TResult Function(String? failedValue) invalidPersonName,
    required TResult Function(String? failedValue) invalidPhone,
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue, int max)? exceedingLength,
    TResult Function(String? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue, int length)? wrongLength,
    TResult Function(String? failedValue)? invalidPersonName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return exceedingLength?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue, int max)? exceedingLength,
    TResult Function(String? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue, int length)? wrongLength,
    TResult Function(String? failedValue)? invalidPersonName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(ExceedingLength value) exceedingLength,
    required TResult Function(TooShort value) lengthTooShort,
    required TResult Function(WrongLength value) wrongLength,
    required TResult Function(InvalidPersonName value) invalidPersonName,
    required TResult Function(InvalidPhone value) invalidPhone,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidDateTime value) invalidDateTime,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ExceedingLength value)? exceedingLength,
    TResult Function(TooShort value)? lengthTooShort,
    TResult Function(WrongLength value)? wrongLength,
    TResult Function(InvalidPersonName value)? invalidPersonName,
    TResult Function(InvalidPhone value)? invalidPhone,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidDateTime value)? invalidDateTime,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ExceedingLength value)? exceedingLength,
    TResult Function(TooShort value)? lengthTooShort,
    TResult Function(WrongLength value)? wrongLength,
    TResult Function(InvalidPersonName value)? invalidPersonName,
    TResult Function(InvalidPhone value)? invalidPhone,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidDateTime value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength implements StringFailure {
  const factory ExceedingLength(
      {required String? failedValue, required int max}) = _$ExceedingLength;

  String? get failedValue;
  int get max;
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<ExceedingLength> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TooShortCopyWith<$Res> {
  factory $TooShortCopyWith(TooShort value, $Res Function(TooShort) then) =
      _$TooShortCopyWithImpl<$Res>;
  $Res call({String? failedValue, int min});
}

/// @nodoc
class _$TooShortCopyWithImpl<$Res> extends _$StringFailureCopyWithImpl<$Res>
    implements $TooShortCopyWith<$Res> {
  _$TooShortCopyWithImpl(TooShort _value, $Res Function(TooShort) _then)
      : super(_value, (v) => _then(v as TooShort));

  @override
  TooShort get _value => super._value as TooShort;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? min = freezed,
  }) {
    return _then(TooShort(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TooShort implements TooShort {
  const _$TooShort({required this.failedValue, required this.min});

  @override
  final String? failedValue;
  @override
  final int min;

  @override
  String toString() {
    return 'StringFailure.lengthTooShort(failedValue: $failedValue, min: $min)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TooShort &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.min, min));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(min));

  @JsonKey(ignore: true)
  @override
  $TooShortCopyWith<TooShort> get copyWith =>
      _$TooShortCopyWithImpl<TooShort>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) empty,
    required TResult Function(String? failedValue, int max) exceedingLength,
    required TResult Function(String? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue, int length) wrongLength,
    required TResult Function(String? failedValue) invalidPersonName,
    required TResult Function(String? failedValue) invalidPhone,
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return lengthTooShort(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue, int max)? exceedingLength,
    TResult Function(String? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue, int length)? wrongLength,
    TResult Function(String? failedValue)? invalidPersonName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return lengthTooShort?.call(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue, int max)? exceedingLength,
    TResult Function(String? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue, int length)? wrongLength,
    TResult Function(String? failedValue)? invalidPersonName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (lengthTooShort != null) {
      return lengthTooShort(failedValue, min);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(ExceedingLength value) exceedingLength,
    required TResult Function(TooShort value) lengthTooShort,
    required TResult Function(WrongLength value) wrongLength,
    required TResult Function(InvalidPersonName value) invalidPersonName,
    required TResult Function(InvalidPhone value) invalidPhone,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidDateTime value) invalidDateTime,
  }) {
    return lengthTooShort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ExceedingLength value)? exceedingLength,
    TResult Function(TooShort value)? lengthTooShort,
    TResult Function(WrongLength value)? wrongLength,
    TResult Function(InvalidPersonName value)? invalidPersonName,
    TResult Function(InvalidPhone value)? invalidPhone,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidDateTime value)? invalidDateTime,
  }) {
    return lengthTooShort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ExceedingLength value)? exceedingLength,
    TResult Function(TooShort value)? lengthTooShort,
    TResult Function(WrongLength value)? wrongLength,
    TResult Function(InvalidPersonName value)? invalidPersonName,
    TResult Function(InvalidPhone value)? invalidPhone,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidDateTime value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (lengthTooShort != null) {
      return lengthTooShort(this);
    }
    return orElse();
  }
}

abstract class TooShort implements StringFailure {
  const factory TooShort({required String? failedValue, required int min}) =
      _$TooShort;

  String? get failedValue;
  int get min;
  @JsonKey(ignore: true)
  $TooShortCopyWith<TooShort> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WrongLengthCopyWith<$Res> {
  factory $WrongLengthCopyWith(
          WrongLength value, $Res Function(WrongLength) then) =
      _$WrongLengthCopyWithImpl<$Res>;
  $Res call({String? failedValue, int length});
}

/// @nodoc
class _$WrongLengthCopyWithImpl<$Res> extends _$StringFailureCopyWithImpl<$Res>
    implements $WrongLengthCopyWith<$Res> {
  _$WrongLengthCopyWithImpl(
      WrongLength _value, $Res Function(WrongLength) _then)
      : super(_value, (v) => _then(v as WrongLength));

  @override
  WrongLength get _value => super._value as WrongLength;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? length = freezed,
  }) {
    return _then(WrongLength(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WrongLength implements WrongLength {
  const _$WrongLength({required this.failedValue, required this.length});

  @override
  final String? failedValue;
  @override
  final int length;

  @override
  String toString() {
    return 'StringFailure.wrongLength(failedValue: $failedValue, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WrongLength &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.length, length));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(length));

  @JsonKey(ignore: true)
  @override
  $WrongLengthCopyWith<WrongLength> get copyWith =>
      _$WrongLengthCopyWithImpl<WrongLength>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) empty,
    required TResult Function(String? failedValue, int max) exceedingLength,
    required TResult Function(String? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue, int length) wrongLength,
    required TResult Function(String? failedValue) invalidPersonName,
    required TResult Function(String? failedValue) invalidPhone,
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return wrongLength(failedValue, length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue, int max)? exceedingLength,
    TResult Function(String? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue, int length)? wrongLength,
    TResult Function(String? failedValue)? invalidPersonName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return wrongLength?.call(failedValue, length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue, int max)? exceedingLength,
    TResult Function(String? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue, int length)? wrongLength,
    TResult Function(String? failedValue)? invalidPersonName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (wrongLength != null) {
      return wrongLength(failedValue, length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(ExceedingLength value) exceedingLength,
    required TResult Function(TooShort value) lengthTooShort,
    required TResult Function(WrongLength value) wrongLength,
    required TResult Function(InvalidPersonName value) invalidPersonName,
    required TResult Function(InvalidPhone value) invalidPhone,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidDateTime value) invalidDateTime,
  }) {
    return wrongLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ExceedingLength value)? exceedingLength,
    TResult Function(TooShort value)? lengthTooShort,
    TResult Function(WrongLength value)? wrongLength,
    TResult Function(InvalidPersonName value)? invalidPersonName,
    TResult Function(InvalidPhone value)? invalidPhone,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidDateTime value)? invalidDateTime,
  }) {
    return wrongLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ExceedingLength value)? exceedingLength,
    TResult Function(TooShort value)? lengthTooShort,
    TResult Function(WrongLength value)? wrongLength,
    TResult Function(InvalidPersonName value)? invalidPersonName,
    TResult Function(InvalidPhone value)? invalidPhone,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidDateTime value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (wrongLength != null) {
      return wrongLength(this);
    }
    return orElse();
  }
}

abstract class WrongLength implements StringFailure {
  const factory WrongLength(
      {required String? failedValue, required int length}) = _$WrongLength;

  String? get failedValue;
  int get length;
  @JsonKey(ignore: true)
  $WrongLengthCopyWith<WrongLength> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidPersonNameCopyWith<$Res> {
  factory $InvalidPersonNameCopyWith(
          InvalidPersonName value, $Res Function(InvalidPersonName) then) =
      _$InvalidPersonNameCopyWithImpl<$Res>;
  $Res call({String? failedValue});
}

/// @nodoc
class _$InvalidPersonNameCopyWithImpl<$Res>
    extends _$StringFailureCopyWithImpl<$Res>
    implements $InvalidPersonNameCopyWith<$Res> {
  _$InvalidPersonNameCopyWithImpl(
      InvalidPersonName _value, $Res Function(InvalidPersonName) _then)
      : super(_value, (v) => _then(v as InvalidPersonName));

  @override
  InvalidPersonName get _value => super._value as InvalidPersonName;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidPersonName(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidPersonName implements InvalidPersonName {
  const _$InvalidPersonName({required this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'StringFailure.invalidPersonName(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidPersonName &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidPersonNameCopyWith<InvalidPersonName> get copyWith =>
      _$InvalidPersonNameCopyWithImpl<InvalidPersonName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) empty,
    required TResult Function(String? failedValue, int max) exceedingLength,
    required TResult Function(String? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue, int length) wrongLength,
    required TResult Function(String? failedValue) invalidPersonName,
    required TResult Function(String? failedValue) invalidPhone,
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return invalidPersonName(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue, int max)? exceedingLength,
    TResult Function(String? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue, int length)? wrongLength,
    TResult Function(String? failedValue)? invalidPersonName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return invalidPersonName?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue, int max)? exceedingLength,
    TResult Function(String? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue, int length)? wrongLength,
    TResult Function(String? failedValue)? invalidPersonName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (invalidPersonName != null) {
      return invalidPersonName(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(ExceedingLength value) exceedingLength,
    required TResult Function(TooShort value) lengthTooShort,
    required TResult Function(WrongLength value) wrongLength,
    required TResult Function(InvalidPersonName value) invalidPersonName,
    required TResult Function(InvalidPhone value) invalidPhone,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidDateTime value) invalidDateTime,
  }) {
    return invalidPersonName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ExceedingLength value)? exceedingLength,
    TResult Function(TooShort value)? lengthTooShort,
    TResult Function(WrongLength value)? wrongLength,
    TResult Function(InvalidPersonName value)? invalidPersonName,
    TResult Function(InvalidPhone value)? invalidPhone,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidDateTime value)? invalidDateTime,
  }) {
    return invalidPersonName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ExceedingLength value)? exceedingLength,
    TResult Function(TooShort value)? lengthTooShort,
    TResult Function(WrongLength value)? wrongLength,
    TResult Function(InvalidPersonName value)? invalidPersonName,
    TResult Function(InvalidPhone value)? invalidPhone,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidDateTime value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (invalidPersonName != null) {
      return invalidPersonName(this);
    }
    return orElse();
  }
}

abstract class InvalidPersonName implements StringFailure {
  const factory InvalidPersonName({required String? failedValue}) =
      _$InvalidPersonName;

  String? get failedValue;
  @JsonKey(ignore: true)
  $InvalidPersonNameCopyWith<InvalidPersonName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidPhoneCopyWith<$Res> {
  factory $InvalidPhoneCopyWith(
          InvalidPhone value, $Res Function(InvalidPhone) then) =
      _$InvalidPhoneCopyWithImpl<$Res>;
  $Res call({String? failedValue});
}

/// @nodoc
class _$InvalidPhoneCopyWithImpl<$Res> extends _$StringFailureCopyWithImpl<$Res>
    implements $InvalidPhoneCopyWith<$Res> {
  _$InvalidPhoneCopyWithImpl(
      InvalidPhone _value, $Res Function(InvalidPhone) _then)
      : super(_value, (v) => _then(v as InvalidPhone));

  @override
  InvalidPhone get _value => super._value as InvalidPhone;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidPhone(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidPhone implements InvalidPhone {
  const _$InvalidPhone({required this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'StringFailure.invalidPhone(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidPhone &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidPhoneCopyWith<InvalidPhone> get copyWith =>
      _$InvalidPhoneCopyWithImpl<InvalidPhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) empty,
    required TResult Function(String? failedValue, int max) exceedingLength,
    required TResult Function(String? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue, int length) wrongLength,
    required TResult Function(String? failedValue) invalidPersonName,
    required TResult Function(String? failedValue) invalidPhone,
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return invalidPhone(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue, int max)? exceedingLength,
    TResult Function(String? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue, int length)? wrongLength,
    TResult Function(String? failedValue)? invalidPersonName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return invalidPhone?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue, int max)? exceedingLength,
    TResult Function(String? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue, int length)? wrongLength,
    TResult Function(String? failedValue)? invalidPersonName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (invalidPhone != null) {
      return invalidPhone(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(ExceedingLength value) exceedingLength,
    required TResult Function(TooShort value) lengthTooShort,
    required TResult Function(WrongLength value) wrongLength,
    required TResult Function(InvalidPersonName value) invalidPersonName,
    required TResult Function(InvalidPhone value) invalidPhone,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidDateTime value) invalidDateTime,
  }) {
    return invalidPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ExceedingLength value)? exceedingLength,
    TResult Function(TooShort value)? lengthTooShort,
    TResult Function(WrongLength value)? wrongLength,
    TResult Function(InvalidPersonName value)? invalidPersonName,
    TResult Function(InvalidPhone value)? invalidPhone,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidDateTime value)? invalidDateTime,
  }) {
    return invalidPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ExceedingLength value)? exceedingLength,
    TResult Function(TooShort value)? lengthTooShort,
    TResult Function(WrongLength value)? wrongLength,
    TResult Function(InvalidPersonName value)? invalidPersonName,
    TResult Function(InvalidPhone value)? invalidPhone,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidDateTime value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (invalidPhone != null) {
      return invalidPhone(this);
    }
    return orElse();
  }
}

abstract class InvalidPhone implements StringFailure {
  const factory InvalidPhone({required String? failedValue}) = _$InvalidPhone;

  String? get failedValue;
  @JsonKey(ignore: true)
  $InvalidPhoneCopyWith<InvalidPhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<$Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail value, $Res Function(InvalidEmail) then) =
      _$InvalidEmailCopyWithImpl<$Res>;
  $Res call({String? failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<$Res> extends _$StringFailureCopyWithImpl<$Res>
    implements $InvalidEmailCopyWith<$Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail _value, $Res Function(InvalidEmail) _then)
      : super(_value, (v) => _then(v as InvalidEmail));

  @override
  InvalidEmail get _value => super._value as InvalidEmail;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidEmail implements InvalidEmail {
  const _$InvalidEmail({required this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'StringFailure.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidEmail &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<InvalidEmail> get copyWith =>
      _$InvalidEmailCopyWithImpl<InvalidEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) empty,
    required TResult Function(String? failedValue, int max) exceedingLength,
    required TResult Function(String? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue, int length) wrongLength,
    required TResult Function(String? failedValue) invalidPersonName,
    required TResult Function(String? failedValue) invalidPhone,
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue, int max)? exceedingLength,
    TResult Function(String? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue, int length)? wrongLength,
    TResult Function(String? failedValue)? invalidPersonName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue, int max)? exceedingLength,
    TResult Function(String? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue, int length)? wrongLength,
    TResult Function(String? failedValue)? invalidPersonName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(ExceedingLength value) exceedingLength,
    required TResult Function(TooShort value) lengthTooShort,
    required TResult Function(WrongLength value) wrongLength,
    required TResult Function(InvalidPersonName value) invalidPersonName,
    required TResult Function(InvalidPhone value) invalidPhone,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidDateTime value) invalidDateTime,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ExceedingLength value)? exceedingLength,
    TResult Function(TooShort value)? lengthTooShort,
    TResult Function(WrongLength value)? wrongLength,
    TResult Function(InvalidPersonName value)? invalidPersonName,
    TResult Function(InvalidPhone value)? invalidPhone,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidDateTime value)? invalidDateTime,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ExceedingLength value)? exceedingLength,
    TResult Function(TooShort value)? lengthTooShort,
    TResult Function(WrongLength value)? wrongLength,
    TResult Function(InvalidPersonName value)? invalidPersonName,
    TResult Function(InvalidPhone value)? invalidPhone,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidDateTime value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements StringFailure {
  const factory InvalidEmail({required String? failedValue}) = _$InvalidEmail;

  String? get failedValue;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<InvalidEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidDateTimeCopyWith<$Res> {
  factory $InvalidDateTimeCopyWith(
          InvalidDateTime value, $Res Function(InvalidDateTime) then) =
      _$InvalidDateTimeCopyWithImpl<$Res>;
  $Res call({DateTime failedValue, String pattern});
}

/// @nodoc
class _$InvalidDateTimeCopyWithImpl<$Res>
    extends _$StringFailureCopyWithImpl<$Res>
    implements $InvalidDateTimeCopyWith<$Res> {
  _$InvalidDateTimeCopyWithImpl(
      InvalidDateTime _value, $Res Function(InvalidDateTime) _then)
      : super(_value, (v) => _then(v as InvalidDateTime));

  @override
  InvalidDateTime get _value => super._value as InvalidDateTime;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? pattern = freezed,
  }) {
    return _then(InvalidDateTime(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pattern: pattern == freezed
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidDateTime implements InvalidDateTime {
  const _$InvalidDateTime({required this.failedValue, required this.pattern});

  @override
  final DateTime failedValue;
  @override
  final String pattern;

  @override
  String toString() {
    return 'StringFailure.invalidDateTime(failedValue: $failedValue, pattern: $pattern)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidDateTime &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.pattern, pattern));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(pattern));

  @JsonKey(ignore: true)
  @override
  $InvalidDateTimeCopyWith<InvalidDateTime> get copyWith =>
      _$InvalidDateTimeCopyWithImpl<InvalidDateTime>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) empty,
    required TResult Function(String? failedValue, int max) exceedingLength,
    required TResult Function(String? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue, int length) wrongLength,
    required TResult Function(String? failedValue) invalidPersonName,
    required TResult Function(String? failedValue) invalidPhone,
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return invalidDateTime(failedValue, pattern);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue, int max)? exceedingLength,
    TResult Function(String? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue, int length)? wrongLength,
    TResult Function(String? failedValue)? invalidPersonName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return invalidDateTime?.call(failedValue, pattern);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue, int max)? exceedingLength,
    TResult Function(String? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue, int length)? wrongLength,
    TResult Function(String? failedValue)? invalidPersonName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (invalidDateTime != null) {
      return invalidDateTime(failedValue, pattern);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(ExceedingLength value) exceedingLength,
    required TResult Function(TooShort value) lengthTooShort,
    required TResult Function(WrongLength value) wrongLength,
    required TResult Function(InvalidPersonName value) invalidPersonName,
    required TResult Function(InvalidPhone value) invalidPhone,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidDateTime value) invalidDateTime,
  }) {
    return invalidDateTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ExceedingLength value)? exceedingLength,
    TResult Function(TooShort value)? lengthTooShort,
    TResult Function(WrongLength value)? wrongLength,
    TResult Function(InvalidPersonName value)? invalidPersonName,
    TResult Function(InvalidPhone value)? invalidPhone,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidDateTime value)? invalidDateTime,
  }) {
    return invalidDateTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(ExceedingLength value)? exceedingLength,
    TResult Function(TooShort value)? lengthTooShort,
    TResult Function(WrongLength value)? wrongLength,
    TResult Function(InvalidPersonName value)? invalidPersonName,
    TResult Function(InvalidPhone value)? invalidPhone,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidDateTime value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (invalidDateTime != null) {
      return invalidDateTime(this);
    }
    return orElse();
  }
}

abstract class InvalidDateTime implements StringFailure {
  const factory InvalidDateTime(
      {required DateTime failedValue,
      required String pattern}) = _$InvalidDateTime;

  DateTime get failedValue;
  String get pattern;
  @JsonKey(ignore: true)
  $InvalidDateTimeCopyWith<InvalidDateTime> get copyWith =>
      throw _privateConstructorUsedError;
}
