import 'package:bonybom_app/domain/entities/user.dart';
import 'package:equatable/equatable.dart';

class UserParams extends Equatable {
  final User user;

  UserParams({required this.user});

  @override
  List<Object?> get props => [this.user];
}
