// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '/app/my_app.dart';
import '/app/services/initial_service.dart';
import '/flavors/build_config.dart';

//应用初始化
class InitApp {
  static void run() {
    //捕获异常
    catchException(() => runApp(const MyApp()));
  }

  /// 初始化服务
  static void initServices() async {
    final Logger logger = BuildConfig.instance.config.logger;
    logger.i('starting services ...');
    await Get.putAsync(() => InitialService().init());
    logger.i('All services started...');
  }

  ///异常捕获处理
  static void catchException<T>(T Function() callback) {
    //捕获异常的回调
    FlutterError.onError = (FlutterErrorDetails details) {
      reportErrorAndLog(details);
    };
    runZoned<Future<void>>(
      () async {
        callback();
      },
      zoneSpecification: ZoneSpecification(
        print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
          collectLog(parent, zone, line); // 收集日志
        },
      ),
      //未捕获的异常的回调
      onError: (Object exception, StackTrace stack) {
        var details = makeDetails(stack, exception);
        reportErrorAndLog(details);
      },
    );
  }

  //日志拦截, 收集日志
  static void collectLog(ZoneDelegate parent, Zone zone, String line) {
    parent.print(zone, line);
  }

  //上报错误和日志逻辑
  static void reportErrorAndLog(FlutterErrorDetails details) {
    final Logger logger = BuildConfig.instance.config.logger;
    logger.e(details);
  }

  // 构建错误信息
  static FlutterErrorDetails makeDetails(StackTrace stack, Object exception) {
    return FlutterErrorDetails(stack: stack, exception: exception);
  }
}
