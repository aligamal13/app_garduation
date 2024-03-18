// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pivot_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PivotLogin _$PivotLoginFromJson(Map<String, dynamic> json) => PivotLogin(
      modelId: json['model_id'] as int?,
      roleId: json['role_id'] as int?,
      modelType: json['model_type'] as String?,
    );

Map<String, dynamic> _$PivotLoginToJson(PivotLogin instance) =>
    <String, dynamic>{
      'model_id': instance.modelId,
      'role_id': instance.roleId,
      'model_type': instance.modelType,
    };
