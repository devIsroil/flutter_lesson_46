
import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final int id;
  final String email;
  final String password;
  final String name;
  final String role;
  final String avatar;
  final String creationAt;
  final String updatedAt;

  UserModel({
    required this.id,
    required this.password,
    required this.email,
    required this.name,
    required this.role,
    required this.avatar,
    required this.creationAt,
    required this.updatedAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return _$UserModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UserModelToJson(this);
  }
}
