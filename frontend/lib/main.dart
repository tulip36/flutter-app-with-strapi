import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/data/services/init_services.dart';
import 'app/routes/app_pages.dart';

void main() {
  initServices();

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
