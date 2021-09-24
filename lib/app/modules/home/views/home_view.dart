import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('This is appbar')),
      body: pageContent(context),
    );
  }

  pageContent(BuildContext context) {
    return Container(
      child: Text('Hello'),
    );
  }
}
