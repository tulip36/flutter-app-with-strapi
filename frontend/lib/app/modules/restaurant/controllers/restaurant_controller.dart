import 'package:frontend/app/data/models/restaurant_model.dart';
import 'package:frontend/app/data/providers/restaurant_provider.dart';
import 'package:get/get.dart';

class RestaurantController extends GetxController {
  Restaurant? _restaurant;
  var restaurant = Restaurant().obs;
  final count = 10.obs;

  @override
  void onInit() async {
    super.onInit();
    _restaurant = await RestaurantProvider().getRestaurant(1);
    restaurant.update((val) {
      val?.id = _restaurant?.id;
      val?.name = _restaurant?.name;
      val?.description = _restaurant?.description;
      val?.address = _restaurant?.address;
      val?.phone = _restaurant?.phone;
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
