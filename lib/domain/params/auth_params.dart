import 'package:equatable/equatable.dart';

class AuthParams extends Equatable {
  final String userName;
  final String password;

  AuthParams({required this.userName, required this.password});

  @override
  List<Object?> get props => [this.userName, this.password];
}
