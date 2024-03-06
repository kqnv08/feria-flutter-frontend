import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:hive_flutter/hive_flutter.dart';
export '__generated__/products.req.gql.dart';
export '__generated__/products.var.gql.dart';
export '__generated__/products.data.gql.dart';
import 'package:graphql_test/graphql/__generated__/schema.schema.gql.dart'
    show possibleTypesMap;

Future<Client> initClient() async {
  await Hive.initFlutter();

  final box = await Hive.openBox("graphql");

  final store = HiveStore(box);

  final cache =
      Cache(store: store, possibleTypes: possibleTypesMap, typePolicies: {
    "Product": const TypePolicy(
      keyFields: {
        'id': true,
      },
    )
  });

  final link = HttpLink('https://stock-system-backend.onrender.com/graphql');

  final client = Client(
    link: link,
    cache: cache,
  );

  return client;
}

Client iniCountryClient() {
  final link = HttpLink("https://countries.trevorblades.com/");

  final cache = Cache(possibleTypes: possibleTypesMap);

  final countriesClient = Client(link: link, cache: cache);
  return countriesClient;
}
