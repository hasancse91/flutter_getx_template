

import 'base_exception.dart';

class AppException extends BaseException{
  AppException({
    String message = "",
  }): super(message: message);
}
