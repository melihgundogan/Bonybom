import 'package:equatable/equatable.dart';

class Auth extends Equatable {
  final String? message;
  final List<String>? categories;
  final int? status;
  final String? token;

  Auth({
    this.message,
    this.categories,
    this.status,
    this.token,
  });

  @override
  List<Object?> get props => [message, categories, status, token];
}
