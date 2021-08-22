import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/restaurant_controller.dart';

class RestaurantView extends GetView<RestaurantController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RestaurantView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RestaurantView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
