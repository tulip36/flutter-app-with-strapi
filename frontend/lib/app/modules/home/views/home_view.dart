import 'package:flutter/material.dart';
// import 'package:frontend/app/modules/restaurant/views/restaurant_view.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/restaurant');
            },
            child: Text('Goto Restaurant'),
          ),
        ],
      ),
    );
  }
}
