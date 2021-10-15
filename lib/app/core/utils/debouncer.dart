import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';

class Debouncer {
  final int milliseconds;
  VoidCallback? action;
  Timer? _timer;

  Debouncer({this.milliseconds = AppValues.defaultDebounceTimeInMilliSeconds});

  run(VoidCallback action) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
