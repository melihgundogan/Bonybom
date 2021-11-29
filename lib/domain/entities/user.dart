import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? password;
  final int? locationId;
  final String? gender;
  final String? dob;
  final List<int>? categories;

  User(
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.locationId,
    this.gender,
    this.dob,
    this.categories,
  );

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
