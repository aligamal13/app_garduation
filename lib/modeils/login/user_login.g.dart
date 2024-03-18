// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLogin _$UserLoginFromJson(Map<String, dynamic> json) => UserLogin(
      id: json['id'] as int?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      countryCode: json['country_code'] as String?,
      commission: json['commission'] as String?,
      emailVerifiedAt: json['email_verified_at'],
      vendorId: json['vendor_id'],
      isActive: json['is_active'] as int?,
      isOnline: json['is_online'] as int?,
      creatorId: json['creator_id'],
      language: json['language'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deletedAt: json['deleted_at'],
      roleName: json['role_name'] as String?,
      roleId: json['role_id'] as int?,
      formattedDate: json['formatted_date'] as String?,
      photo: json['photo'] as String?,
      rating: json['rating'] as int?,
      assignedOrders: json['assigned_orders'] as int?,
      rawPhone: json['raw_phone'] as String?,
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => RolesLogin.fromJson(e as Map<String, dynamic>))
          .toList(),
      media: json['media'] as List<dynamic>?,
    );

Map<String, dynamic> _$UserLoginToJson(UserLogin instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'country_code': instance.countryCode,
      'commission': instance.commission,
      'email_verified_at': instance.emailVerifiedAt,
      'vendor_id': instance.vendorId,
      'is_active': instance.isActive,
      'is_online': instance.isOnline,
      'creator_id': instance.creatorId,
      'language': instance.language,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'role_name': instance.roleName,
      'role_id': instance.roleId,
      'formatted_date': instance.formattedDate,
      'photo': instance.photo,
      'rating': instance.rating,
      'assigned_orders': instance.assignedOrders,
      'raw_phone': instance.rawPhone,
      'roles': instance.roles?.map((e) => e.toJson()).toList(),
      'media': instance.media,
    };
