


import 'package:json_annotation/json_annotation.dart';

part 'pivot_login.g.dart';
@JsonSerializable(explicitToJson: true)

class PivotLogin {
  @JsonKey(name: 'model_id')
  int? modelId;
  @JsonKey(name: 'role_id')

  int? roleId;
  @JsonKey(name: 'model_type')

  String? modelType;

  PivotLogin({this.modelId, this.roleId, this.modelType});

  factory PivotLogin.fromJson(Map<String, dynamic> json) => _$PivotLoginFromJson(json);
  Map<String, dynamic> toJson() => _$PivotLoginToJson(this);

}