import 'package:get_it/get_it.dart';

import 'package:mcs_accounting_flutter_web/router/navigation_service.dart';

GetIt getIt = GetIt.instance;

// inject all class as singleton using get_it
Future<void> init() async {

  getIt.registerLazySingleton<NavigationService>(() => NavigationService());

  //notifier



}
