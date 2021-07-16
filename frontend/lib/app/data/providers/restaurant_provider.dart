import 'package:get/get.dart';

import '../models/restaurant_model.dart';

// class RestaurantProvider extends GetConnect {
//   @override
//   void onInit() {
//     httpClient.defaultDecoder = (map) {
//       if (map is Map<String, dynamic>) return Restaurant.fromJson(map);
//       if (map is List)
//         return map.map((item) => Restaurant.fromJson(item)).toList();
//     };
//     httpClient.baseUrl = 'YOUR-API-URL';
//   }

//   Future<Restaurant?> getRestaurant(int id) async {
//     final response = await get('restaurant/$id');
//     return response.body;
//   }

//   Future<Response<Restaurant>> postRestaurant(Restaurant restaurant) async =>
//       await post('restaurant', restaurant);
//   Future<Response> deleteRestaurant(int id) async =>
//       await delete('restaurant/$id');
// }
