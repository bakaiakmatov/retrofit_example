import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final int? id;
  final String? name;
  final String? username;
  final String? email;

  UserModel(
    this.id,
    this.name,
    this.username,
    this.email,
  );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
// flutter pub run build_runner build --delete-conflicting-outputs
// fluuter pub run build_runner build