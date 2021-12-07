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

  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.locationId,
    required this.gender,
    required this.dob,
    required this.categories,
  });

  @override
  List<Object?> get props => [firstName, lastName, email, password, locationId, gender, dob, categories];
}
