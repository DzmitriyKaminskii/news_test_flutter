import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final locator = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  $initGetIt(locator);
  locator.registerLazySingleton(() => http.Client());
}
