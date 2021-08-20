// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_local_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLocalModel _$UserLocalModelFromJson(Map<String, dynamic> json) =>
    UserLocalModel(
      name: json['name'] as String? ?? 'member_name',
      phone: json['phone'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$UserLocalModelToJson(UserLocalModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
    };
