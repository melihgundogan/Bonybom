import 'package:vexana/vexana.dart';

abstract class IResponseModel<T> {
  T? data;
  IErrorModel? error;
}

abstract class IErrorModel<T> {
  void statusCode();
}

class ResponseModel<T> extends IResponseModel<T> {}
