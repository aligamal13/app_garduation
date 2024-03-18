import 'package:pro_graduation/modeils/login/pivot_login.dart';
import 'package:json_annotation/json_annotation.dart';

part 'relis_login.g.dart';
@JsonSerializable(explicitToJson: true)
class RolesLogin {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')

  String? name;
  @JsonKey(name: 'guard_name')

  String? guardName;
  @JsonKey(name: 'created_at')

  String? createdAt;
  @JsonKey(name: 'updated_at')

  String? updatedAt;
  @JsonKey(name: 'pivot')

  PivotLogin? pivot;

  RolesLogin(
      {this.id,
        this.name,
        this.guardName,
        this.createdAt,
        this.updatedAt,
        this.pivot});


  factory RolesLogin.fromJson(Map<String, dynamic> json) => _$RolesLoginFromJson(json);
  Map<String, dynamic> toJson() => _$RolesLoginToJson(this);

}
