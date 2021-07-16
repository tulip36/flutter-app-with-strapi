import 'package:get/get.dart';

class RestaurantController extends GetxController {
  //TODO: Implement RestaurantController

  GraphQLResponse<dynamic>? response;
  final count = 10.obs;

  @override
  void onInit() async {
    super.onInit();
    // query allow made GraphQL raw querys
    final connect = GetConnect();
    connect.baseUrl = 'https://countries.trevorblades.com/';
    final response = await connect.query(
      r"""
   {
    country(code: "BR") {
      name
      native
      currency
      languages {
        code
        name
      }
    }
  }
  """,
    );
    print(response.body);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
