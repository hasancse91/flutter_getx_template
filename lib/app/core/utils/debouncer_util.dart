import 'dart:async';

import 'package:flutter/material.dart';

import '/app/core/values/app_values.dart';

class DebouncerUtil {
  final int milliseconds;
  VoidCallback? action;
  Timer? _timer;

  DebouncerUtil(
      {this.milliseconds = AppValues.defaultDebounceTimeInMilliSeconds});

  run(VoidCallback action) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
