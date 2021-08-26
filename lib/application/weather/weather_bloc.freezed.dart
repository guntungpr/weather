// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherEventTearOff {
  const _$WeatherEventTearOff();

  InputCity inputCity(String inputCity) {
    return InputCity(
      inputCity,
    );
  }

  SearchWeather searchWeather() {
    return const SearchWeather();
  }

  CalculateTemp calculateTemp(double temp) {
    return CalculateTemp(
      temp,
    );
  }
}

/// @nodoc
const $WeatherEvent = _$WeatherEventTearOff();

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inputCity) inputCity,
    required TResult Function() searchWeather,
    required TResult Function(double temp) calculateTemp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String inputCity)? inputCity,
    TResult Function()? searchWeather,
    TResult Function(double temp)? calculateTemp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inputCity)? inputCity,
    TResult Function()? searchWeather,
    TResult Function(double temp)? calculateTemp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputCity value) inputCity,
    required TResult Function(SearchWeather value) searchWeather,
    required TResult Function(CalculateTemp value) calculateTemp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InputCity value)? inputCity,
    TResult Function(SearchWeather value)? searchWeather,
    TResult Function(CalculateTemp value)? calculateTemp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputCity value)? inputCity,
    TResult Function(SearchWeather value)? searchWeather,
    TResult Function(CalculateTemp value)? calculateTemp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res> implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  final WeatherEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherEvent) _then;
}

/// @nodoc
abstract class $InputCityCopyWith<$Res> {
  factory $InputCityCopyWith(InputCity value, $Res Function(InputCity) then) =
      _$InputCityCopyWithImpl<$Res>;
  $Res call({String inputCity});
}

/// @nodoc
class _$InputCityCopyWithImpl<$Res> extends _$WeatherEventCopyWithImpl<$Res>
    implements $InputCityCopyWith<$Res> {
  _$InputCityCopyWithImpl(InputCity _value, $Res Function(InputCity) _then)
      : super(_value, (v) => _then(v as InputCity));

  @override
  InputCity get _value => super._value as InputCity;

  @override
  $Res call({
    Object? inputCity = freezed,
  }) {
    return _then(InputCity(
      inputCity == freezed
          ? _value.inputCity
          : inputCity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InputCity implements InputCity {
  const _$InputCity(this.inputCity);

  @override
  final String inputCity;

  @override
  String toString() {
    return 'WeatherEvent.inputCity(inputCity: $inputCity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InputCity &&
            (identical(other.inputCity, inputCity) ||
                const DeepCollectionEquality()
                    .equals(other.inputCity, inputCity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(inputCity);

  @JsonKey(ignore: true)
  @override
  $InputCityCopyWith<InputCity> get copyWith =>
      _$InputCityCopyWithImpl<InputCity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inputCity) inputCity,
    required TResult Function() searchWeather,
    required TResult Function(double temp) calculateTemp,
  }) {
    return inputCity(this.inputCity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String inputCity)? inputCity,
    TResult Function()? searchWeather,
    TResult Function(double temp)? calculateTemp,
  }) {
    return inputCity?.call(this.inputCity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inputCity)? inputCity,
    TResult Function()? searchWeather,
    TResult Function(double temp)? calculateTemp,
    required TResult orElse(),
  }) {
    if (inputCity != null) {
      return inputCity(this.inputCity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputCity value) inputCity,
    required TResult Function(SearchWeather value) searchWeather,
    required TResult Function(CalculateTemp value) calculateTemp,
  }) {
    return inputCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InputCity value)? inputCity,
    TResult Function(SearchWeather value)? searchWeather,
    TResult Function(CalculateTemp value)? calculateTemp,
  }) {
    return inputCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputCity value)? inputCity,
    TResult Function(SearchWeather value)? searchWeather,
    TResult Function(CalculateTemp value)? calculateTemp,
    required TResult orElse(),
  }) {
    if (inputCity != null) {
      return inputCity(this);
    }
    return orElse();
  }
}

abstract class InputCity implements WeatherEvent {
  const factory InputCity(String inputCity) = _$InputCity;

  String get inputCity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputCityCopyWith<InputCity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchWeatherCopyWith<$Res> {
  factory $SearchWeatherCopyWith(
          SearchWeather value, $Res Function(SearchWeather) then) =
      _$SearchWeatherCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchWeatherCopyWithImpl<$Res> extends _$WeatherEventCopyWithImpl<$Res>
    implements $SearchWeatherCopyWith<$Res> {
  _$SearchWeatherCopyWithImpl(
      SearchWeather _value, $Res Function(SearchWeather) _then)
      : super(_value, (v) => _then(v as SearchWeather));

  @override
  SearchWeather get _value => super._value as SearchWeather;
}

/// @nodoc

class _$SearchWeather implements SearchWeather {
  const _$SearchWeather();

  @override
  String toString() {
    return 'WeatherEvent.searchWeather()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchWeather);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inputCity) inputCity,
    required TResult Function() searchWeather,
    required TResult Function(double temp) calculateTemp,
  }) {
    return searchWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String inputCity)? inputCity,
    TResult Function()? searchWeather,
    TResult Function(double temp)? calculateTemp,
  }) {
    return searchWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inputCity)? inputCity,
    TResult Function()? searchWeather,
    TResult Function(double temp)? calculateTemp,
    required TResult orElse(),
  }) {
    if (searchWeather != null) {
      return searchWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputCity value) inputCity,
    required TResult Function(SearchWeather value) searchWeather,
    required TResult Function(CalculateTemp value) calculateTemp,
  }) {
    return searchWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InputCity value)? inputCity,
    TResult Function(SearchWeather value)? searchWeather,
    TResult Function(CalculateTemp value)? calculateTemp,
  }) {
    return searchWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputCity value)? inputCity,
    TResult Function(SearchWeather value)? searchWeather,
    TResult Function(CalculateTemp value)? calculateTemp,
    required TResult orElse(),
  }) {
    if (searchWeather != null) {
      return searchWeather(this);
    }
    return orElse();
  }
}

abstract class SearchWeather implements WeatherEvent {
  const factory SearchWeather() = _$SearchWeather;
}

/// @nodoc
abstract class $CalculateTempCopyWith<$Res> {
  factory $CalculateTempCopyWith(
          CalculateTemp value, $Res Function(CalculateTemp) then) =
      _$CalculateTempCopyWithImpl<$Res>;
  $Res call({double temp});
}

/// @nodoc
class _$CalculateTempCopyWithImpl<$Res> extends _$WeatherEventCopyWithImpl<$Res>
    implements $CalculateTempCopyWith<$Res> {
  _$CalculateTempCopyWithImpl(
      CalculateTemp _value, $Res Function(CalculateTemp) _then)
      : super(_value, (v) => _then(v as CalculateTemp));

  @override
  CalculateTemp get _value => super._value as CalculateTemp;

  @override
  $Res call({
    Object? temp = freezed,
  }) {
    return _then(CalculateTemp(
      temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CalculateTemp implements CalculateTemp {
  const _$CalculateTemp(this.temp);

  @override
  final double temp;

  @override
  String toString() {
    return 'WeatherEvent.calculateTemp(temp: $temp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CalculateTemp &&
            (identical(other.temp, temp) ||
                const DeepCollectionEquality().equals(other.temp, temp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(temp);

  @JsonKey(ignore: true)
  @override
  $CalculateTempCopyWith<CalculateTemp> get copyWith =>
      _$CalculateTempCopyWithImpl<CalculateTemp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inputCity) inputCity,
    required TResult Function() searchWeather,
    required TResult Function(double temp) calculateTemp,
  }) {
    return calculateTemp(temp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String inputCity)? inputCity,
    TResult Function()? searchWeather,
    TResult Function(double temp)? calculateTemp,
  }) {
    return calculateTemp?.call(temp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inputCity)? inputCity,
    TResult Function()? searchWeather,
    TResult Function(double temp)? calculateTemp,
    required TResult orElse(),
  }) {
    if (calculateTemp != null) {
      return calculateTemp(temp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputCity value) inputCity,
    required TResult Function(SearchWeather value) searchWeather,
    required TResult Function(CalculateTemp value) calculateTemp,
  }) {
    return calculateTemp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InputCity value)? inputCity,
    TResult Function(SearchWeather value)? searchWeather,
    TResult Function(CalculateTemp value)? calculateTemp,
  }) {
    return calculateTemp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputCity value)? inputCity,
    TResult Function(SearchWeather value)? searchWeather,
    TResult Function(CalculateTemp value)? calculateTemp,
    required TResult orElse(),
  }) {
    if (calculateTemp != null) {
      return calculateTemp(this);
    }
    return orElse();
  }
}

abstract class CalculateTemp implements WeatherEvent {
  const factory CalculateTemp(double temp) = _$CalculateTemp;

  double get temp => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculateTempCopyWith<CalculateTemp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  _WeatherState call(
      {required Option<Either<WeatherFailure, WeatherModel>>
          optionFailureOrSuccess,
      required String city,
      required bool isLoading,
      required KelvinToCelcius kelvinToCelcius}) {
    return _WeatherState(
      optionFailureOrSuccess: optionFailureOrSuccess,
      city: city,
      isLoading: isLoading,
      kelvinToCelcius: kelvinToCelcius,
    );
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  Option<Either<WeatherFailure, WeatherModel>> get optionFailureOrSuccess =>
      throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  KelvinToCelcius get kelvinToCelcius => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<WeatherFailure, WeatherModel>> optionFailureOrSuccess,
      String city,
      bool isLoading,
      KelvinToCelcius kelvinToCelcius});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;

  @override
  $Res call({
    Object? optionFailureOrSuccess = freezed,
    Object? city = freezed,
    Object? isLoading = freezed,
    Object? kelvinToCelcius = freezed,
  }) {
    return _then(_value.copyWith(
      optionFailureOrSuccess: optionFailureOrSuccess == freezed
          ? _value.optionFailureOrSuccess
          : optionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<WeatherFailure, WeatherModel>>,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      kelvinToCelcius: kelvinToCelcius == freezed
          ? _value.kelvinToCelcius
          : kelvinToCelcius // ignore: cast_nullable_to_non_nullable
              as KelvinToCelcius,
    ));
  }
}

/// @nodoc
abstract class _$WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$WeatherStateCopyWith(
          _WeatherState value, $Res Function(_WeatherState) then) =
      __$WeatherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<WeatherFailure, WeatherModel>> optionFailureOrSuccess,
      String city,
      bool isLoading,
      KelvinToCelcius kelvinToCelcius});
}

/// @nodoc
class __$WeatherStateCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateCopyWith<$Res> {
  __$WeatherStateCopyWithImpl(
      _WeatherState _value, $Res Function(_WeatherState) _then)
      : super(_value, (v) => _then(v as _WeatherState));

  @override
  _WeatherState get _value => super._value as _WeatherState;

  @override
  $Res call({
    Object? optionFailureOrSuccess = freezed,
    Object? city = freezed,
    Object? isLoading = freezed,
    Object? kelvinToCelcius = freezed,
  }) {
    return _then(_WeatherState(
      optionFailureOrSuccess: optionFailureOrSuccess == freezed
          ? _value.optionFailureOrSuccess
          : optionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<WeatherFailure, WeatherModel>>,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      kelvinToCelcius: kelvinToCelcius == freezed
          ? _value.kelvinToCelcius
          : kelvinToCelcius // ignore: cast_nullable_to_non_nullable
              as KelvinToCelcius,
    ));
  }
}

/// @nodoc

class _$_WeatherState implements _WeatherState {
  const _$_WeatherState(
      {required this.optionFailureOrSuccess,
      required this.city,
      required this.isLoading,
      required this.kelvinToCelcius});

  @override
  final Option<Either<WeatherFailure, WeatherModel>> optionFailureOrSuccess;
  @override
  final String city;
  @override
  final bool isLoading;
  @override
  final KelvinToCelcius kelvinToCelcius;

  @override
  String toString() {
    return 'WeatherState(optionFailureOrSuccess: $optionFailureOrSuccess, city: $city, isLoading: $isLoading, kelvinToCelcius: $kelvinToCelcius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherState &&
            (identical(other.optionFailureOrSuccess, optionFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.optionFailureOrSuccess, optionFailureOrSuccess)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.kelvinToCelcius, kelvinToCelcius) ||
                const DeepCollectionEquality()
                    .equals(other.kelvinToCelcius, kelvinToCelcius)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(optionFailureOrSuccess) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(kelvinToCelcius);

  @JsonKey(ignore: true)
  @override
  _$WeatherStateCopyWith<_WeatherState> get copyWith =>
      __$WeatherStateCopyWithImpl<_WeatherState>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {required Option<Either<WeatherFailure, WeatherModel>>
          optionFailureOrSuccess,
      required String city,
      required bool isLoading,
      required KelvinToCelcius kelvinToCelcius}) = _$_WeatherState;

  @override
  Option<Either<WeatherFailure, WeatherModel>> get optionFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  String get city => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  KelvinToCelcius get kelvinToCelcius => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherStateCopyWith<_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}
