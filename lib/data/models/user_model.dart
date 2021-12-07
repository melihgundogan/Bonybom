import 'package:bonybom_app/domain/entities/user.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends User {
  UserModel({
    @required String? firstName,
    @required String? lastName,
    @required String? email,
    @required String? password,
    @required int? locationId,
    @required String? gender,
    @required String? dob,
    @required List<int>? categories,
  }) : super(
          firstName: firstName,
          lastName: lastName,
          email: email,
          password: password,
          locationId: locationId,
          gender: gender,
          dob: dob,
          categories: categories,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
