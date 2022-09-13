// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_local_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserLocalModel _$UserLocalModelFromJson(Map<String, dynamic> json) {
  return _UserLocalModel.fromJson(json);
}

/// @nodoc
class _$UserLocalModelTearOff {
  const _$UserLocalModelTearOff();

  _UserLocalModel call({required String name, required String email}) {
    return _UserLocalModel(
      name: name,
      email: email,
    );
  }

  UserLocalModel fromJson(Map<String, Object?> json) {
    return UserLocalModel.fromJson(json);
  }
}

/// @nodoc
const $UserLocalModel = _$UserLocalModelTearOff();

/// @nodoc
mixin _$UserLocalModel {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLocalModelCopyWith<UserLocalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocalModelCopyWith<$Res> {
  factory $UserLocalModelCopyWith(
          UserLocalModel value, $Res Function(UserLocalModel) then) =
      _$UserLocalModelCopyWithImpl<$Res>;
  $Res call({String name, String email});
}

/// @nodoc
class _$UserLocalModelCopyWithImpl<$Res>
    implements $UserLocalModelCopyWith<$Res> {
  _$UserLocalModelCopyWithImpl(this._value, this._then);

  final UserLocalModel _value;
  // ignore: unused_field
  final $Res Function(UserLocalModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserLocalModelCopyWith<$Res>
    implements $UserLocalModelCopyWith<$Res> {
  factory _$UserLocalModelCopyWith(
          _UserLocalModel value, $Res Function(_UserLocalModel) then) =
      __$UserLocalModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String email});
}

/// @nodoc
class __$UserLocalModelCopyWithImpl<$Res>
    extends _$UserLocalModelCopyWithImpl<$Res>
    implements _$UserLocalModelCopyWith<$Res> {
  __$UserLocalModelCopyWithImpl(
      _UserLocalModel _value, $Res Function(_UserLocalModel) _then)
      : super(_value, (v) => _then(v as _UserLocalModel));

  @override
  _UserLocalModel get _value => super._value as _UserLocalModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_UserLocalModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserLocalModel implements _UserLocalModel {
  _$_UserLocalModel({required this.name, required this.email});

  factory _$_UserLocalModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserLocalModelFromJson(json);

  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'UserLocalModel(name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserLocalModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$UserLocalModelCopyWith<_UserLocalModel> get copyWith =>
      __$UserLocalModelCopyWithImpl<_UserLocalModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserLocalModelToJson(this);
  }
}

abstract class _UserLocalModel implements UserLocalModel {
  factory _UserLocalModel({required String name, required String email}) =
      _$_UserLocalModel;

  factory _UserLocalModel.fromJson(Map<String, dynamic> json) =
      _$_UserLocalModel.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$UserLocalModelCopyWith<_UserLocalModel> get copyWith =>
      throw _privateConstructorUsedError;
}
