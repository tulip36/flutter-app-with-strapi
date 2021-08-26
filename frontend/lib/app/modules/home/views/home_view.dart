import 'package:flutter/material.dart';
// import 'package:frontend/app/modules/restaurant/views/restaurant_view.dart';
import 'package:getwidget/getwidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          GFButton(
            onPressed: () => Get.toNamed('/demo'),
            text: 'demo',
            size: GFSize.LARGE,
            type: GFButtonType.outline2x,
            shape: GFButtonShape.pills,
            hoverColor: Colors.amber,
            borderSide: BorderSide.none,
            textColor: Colors.green,
            icon: FaIcon(FontAwesomeIcons.angleDoubleDown),
            // focusColor: Colors.amber,
            // highlightColor: Colors.amber,
            // splashColor: Colors.amber,
            // disabledColor: Colors.amber,
          ),
        ],
      ),
    );
  }
}
