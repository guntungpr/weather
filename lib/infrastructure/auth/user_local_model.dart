import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_local_model.freezed.dart';
part 'user_local_model.g.dart';

@freezed
class UserLocalModel with _$UserLocalModel {
  factory UserLocalModel({
    required String name,
    required String email,
  }) = _UserLocalModel;

  factory UserLocalModel.fromJson(Map<String, dynamic> json) => _$UserLocalModelFromJson(json);

  factory UserLocalModel.empty() => UserLocalModel(name: '', email: '');
}
