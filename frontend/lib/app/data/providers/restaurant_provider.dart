import 'package:frontend/app/data/services/init_services.dart';
import 'package:get/get.dart';
import 'package:graphql/client.dart';

import '../models/restaurant_model.dart';

class RestaurantProvider {
  GraphQLClient? client;
  Restaurant? restaurant;

  Future<Restaurant> getRestaurant(int id) async {
    client = Get.find<DbService>().client;
    const String readRepositories = r"""
      query getRestaurant($id: ID!) {
        restaurant(id: $id) {
          id
          name
          description
          address
          phone
        }
      }
     """;
    // const int id = 1;

    final QueryOptions options = QueryOptions(
      document: gql(readRepositories),
      variables: <String, dynamic>{
        'id': id,
      },
    );

    final QueryResult? result = await client?.query(options);

    if (result!.hasException) {
      print(result.exception.toString());
    }
    ;

    Map<String, dynamic> json = result.data?['restaurant'];

    return Restaurant.fromJson(json);
  }
}
