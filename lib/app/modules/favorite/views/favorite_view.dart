import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/favorite_controller.dart';

class FavoriteView extends GetView<FavoriteController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FavoriteView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FavoriteView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
