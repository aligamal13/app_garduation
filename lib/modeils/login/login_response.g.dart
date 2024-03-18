// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRespose _$LoginResposeFromJson(Map<String, dynamic> json) => LoginRespose(
      token: json['token'] as String?,
      fbToken: json['fb_token'] as String?,
      type: json['type'] as String?,
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : UserLogin.fromJson(json['user'] as Map<String, dynamic>),
      vehicle: json['vehicle'],
      vendor: json['vendor'],
    );

Map<String, dynamic> _$LoginResposeToJson(LoginRespose instance) =>
    <String, dynamic>{
      'token': instance.token,
      'fb_token': instance.fbToken,
      'type': instance.type,
      'message': instance.message,
      'user': instance.user?.toJson(),
      'vehicle': instance.vehicle,
      'vendor': instance.vendor,
    };
