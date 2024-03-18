import 'package:pro_graduation/modeils/login/relis_login.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_login.g.dart';
@JsonSerializable(explicitToJson: true)
class UserLogin {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'code')

  String? code;
  @JsonKey(name: 'name')

  String? name;
  @JsonKey(name: 'email')

  String? email;
  @JsonKey(name: 'phone')

  String? phone;
  @JsonKey(name: 'country_code')

  String? countryCode;
  @JsonKey(name: 'commission')

  String? commission;
  @JsonKey(name: 'email_verified_at')

  dynamic emailVerifiedAt;
  @JsonKey(name: 'vendor_id')

  dynamic vendorId;
  @JsonKey(name: 'is_active')

  int? isActive;
  @JsonKey(name: 'is_online')

  int? isOnline;
  @JsonKey(name: 'creator_id')

  dynamic creatorId;
  @JsonKey(name: 'language')

  String? language;
  @JsonKey(name: 'created_at')

  String? createdAt;
  @JsonKey(name: 'updated_at')

  String? updatedAt;
  @JsonKey(name: 'deleted_at')

  dynamic deletedAt;
  @JsonKey(name: 'role_name')

  String? roleName;
  @JsonKey(name: 'role_id')

  int? roleId;
  @JsonKey(name: 'formatted_date')

  String? formattedDate;
  @JsonKey(name: 'photo')

  String? photo;
  @JsonKey(name: 'rating')

  int? rating;
  @JsonKey(name: 'assigned_orders')

  int? assignedOrders;
  @JsonKey(name: 'raw_phone')

  String? rawPhone;
  @JsonKey(name: 'roles')

  List<RolesLogin>? roles;
  @JsonKey(name: 'media')

  List<dynamic>? media;

  UserLogin(
      {this.id,
        this.code,
        this.name,
        this.email,
        this.phone,
        this.countryCode,
        this.commission,
        this.emailVerifiedAt,
        this.vendorId,
        this.isActive,
        this.isOnline,
        this.creatorId,
        this.language,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.roleName,
        this.roleId,
        this.formattedDate,
        this.photo,
        this.rating,
        this.assignedOrders,
        this.rawPhone,
        this.roles,
        this.media});

  factory UserLogin.fromJson(Map<String, dynamic> json) => _$UserLoginFromJson(json);
  Map<String, dynamic> toJson() => _$UserLoginToJson(this);

}