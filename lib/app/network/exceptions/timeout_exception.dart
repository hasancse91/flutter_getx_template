import 'package:flutter_getx_template/app/network/exceptions/base_exception.dart';

class TimeoutException extends BaseException {
  TimeoutException(String message) : super(message: message);
}
