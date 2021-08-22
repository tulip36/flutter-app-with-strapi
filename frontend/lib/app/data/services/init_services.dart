import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:graphql/client.dart';

void initServices() async {
  print('starting services ...');

  /// Here is where you put get_storage, hive, shared_pref initialization.
  /// or moor connection, or whatever that's async.
  await Get.putAsync(() => DbService().init());
  print('All services started...');
}

class DbService extends GetxService {
  GraphQLClient? _client;
  GraphQLClient? get client => _client;

  Future<DbService> init() async {
    final String token =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjI5NjU0MTI0LCJleHAiOjE2MzIyNDYxMjR9.Z1QIJCXShPuhe4sZIVQ1llhp9UvNj2luKN5QIIvSfqQ';

    final _httpLink = HttpLink(
      'http://192.168.31.205:1337/graphql',
    );

    final _authLink = AuthLink(
      getToken: () async => 'Bearer $token',
    );

    Link _link = _authLink.concat(_httpLink);

    /// subscriptions must be split otherwise `HttpLink` will. swallow them
    // if (websocketEndpoint != null) {
    //   final _wsLink = WebSocketLink(websockeEndpoint);
    //   _link = Link.split((request) => request.isSubscription, _wsLink, _link);
    // }

    _client = GraphQLClient(
      /// **NOTE** The default store is the InMemoryStore, which does NOT persist to disk
      cache: GraphQLCache(),
      link: _link,
    );

    return this;
  }
}
