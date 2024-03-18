import 'package:json_annotation/json_annotation.dart';
import 'package:pro_graduation/modeils/login/user_login.dart';
part 'login_response.g.dart';
@JsonSerializable(explicitToJson: true)
class LoginRespose {
  @JsonKey(name: 'token')
  String? token;
  @JsonKey(name: 'fb_token')

  String? fbToken;
  @JsonKey(name: 'type')

  String? type;
  @JsonKey(name: 'message')

  String? message;
  @JsonKey(name: 'user')

  UserLogin? user;
  @JsonKey(name: 'vehicle')

  dynamic vehicle;
  @JsonKey(name: 'vendor')

  dynamic vendor;

  LoginRespose(
      {this.token,
        this.fbToken,
        this.type,
        this.message,
        this.user,
        this.vehicle,
        this.vendor});
  factory LoginRespose.fromJson(Map<String, dynamic> json) => _$LoginResposeFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResposeToJson(this);

}