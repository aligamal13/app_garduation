// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relis_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RolesLogin _$RolesLoginFromJson(Map<String, dynamic> json) => RolesLogin(
      id: json['id'] as int?,
      name: json['name'] as String?,
      guardName: json['guard_name'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      pivot: json['pivot'] == null
          ? null
          : PivotLogin.fromJson(json['pivot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RolesLoginToJson(RolesLogin instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'guard_name': instance.guardName,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'pivot': instance.pivot?.toJson(),
    };
