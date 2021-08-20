import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_local_model.g.dart';

@JsonSerializable()
class UserLocalModel {
  @JsonKey(defaultValue: 'member_name')
  final String name;
  final String phone;
  final String address;

  UserLocalModel({
    required this.name,
    required this.phone,
    required this.address,
  });

  // factory UserLocalModel.fromJson(Map<String, dynamic> json) => UserLocalModel(
  //       name: json["member_name"].toString(),
  //       phone: json["phone"].toString(),
  //       address: json["address"].toString(),
  //     );

  factory UserLocalModel.fromJson(Map<String, dynamic> json) =>
      _$UserLocalModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserLocalModelToJson(this);
}
