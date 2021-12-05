import 'package:bonybom_app/core/constants/enums/locale_keys_enum.dart';
import 'package:bonybom_app/core/error/failures.dart';
import 'package:bonybom_app/core/init/cache/local_manager.dart';
import 'package:bonybom_app/data/models/request/auth_request_model.dart';
import 'package:bonybom_app/domain/entities/auth.dart';
import 'package:bonybom_app/domain/params/auth_params.dart';
import 'package:bonybom_app/domain/usecases/auth/login_operation.dart';
import 'package:bonybom_app/presentation/auth/controller/state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({this.formKey, this.emailController, this.passwordController, required this.loginOperation}) : super(Initial());

  LoginOperation loginOperation;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  GlobalKey<FormState>? formKey;

  Future<void> authUser() async {
    emit(const AuthLoadingProcess());

    Either<Failure, Auth> failureOrAuth;

    failureOrAuth = await loginOperation(
      AuthParams(
        requestModel: AuthRequestModel(email: emailController!.text.trim(), password: passwordController!.text.trim()),
      ),
    );

    emit(failureOrAuth.fold((failure) => Unauthenticated(), (auth) {
      LocalManager.instance.setStringValue(PreferencesKeys.TOKEN, auth.token!);
      LocalManager.instance.setBoolValue(PreferencesKeys.IS_LOGGEDIN, true);

      return Authenticated();
    }));
  }
}
