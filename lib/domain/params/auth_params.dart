import 'package:bonybom_app/data/models/request/auth_request_model.dart';
import 'package:equatable/equatable.dart';

class AuthParams extends Equatable {
  final AuthRequestModel requestModel;

  AuthParams({required this.requestModel});

  @override
  List<Object?> get props => [this.requestModel];
}
