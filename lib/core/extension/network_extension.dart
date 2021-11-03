import 'package:bonybom_app/core/constants/enums/http_request_enum.dart';
import 'package:bonybom_app/core/constants/enums/network_path.dart';

extension NetworkExtension on HttpTypes {
  String get rawValue {
    switch (this) {
      case HttpTypes.GET:
        return "GET";
      case HttpTypes.POST:
        return "POST";
      default:
        throw "ERROR_TYPE";
    }
  }
}

extension NetworkPathValue on NetworkPath {
  String get rawValue {
    switch (this) {
      case NetworkPath.SUGGESTION:
        return "suggestion";
      case NetworkPath.ALLSUGGESTION:
        return "suggestion/all";
      case NetworkPath.LOCATION:
        return "location";
      case NetworkPath.CATEGORIES:
        return "category";
      default:
        throw "ERROR PATH";
    }
  }
}
