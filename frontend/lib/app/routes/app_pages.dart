import 'package:get/get.dart';

import 'package:frontend/app/modules/home/bindings/home_binding.dart';
import 'package:frontend/app/modules/home/views/home_view.dart';
import 'package:frontend/app/modules/restaurant/bindings/restaurant_binding.dart';
import 'package:frontend/app/modules/restaurant/views/restaurant_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.RESTAURANT,
      page: () => RestaurantView(),
      binding: RestaurantBinding(),
    ),
  ];
}
