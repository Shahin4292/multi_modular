import 'package:app_settings/di/injection.config.dart';
import 'package:app_settings/di/injection.dart';
import 'package:datastore/di/injection.dart';
import 'package:datastore/provider/session/session_provider.dart';
import 'package:datastore/provider/session/session_provider_imp.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies(String? environment) async {
  // Initialize GetIt via the generated init
  await getIt.init(environment: environment);

  // If you have runtime-dependent services, register them here
  // Example for SharedPreferences:
  final prefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SessionProvider>(() => ProdSessionProviderImp(prefs));
}


// import 'package:app_settings/di/injection.dart';
// import 'package:app_settings/provider/AppSettingsProviderImpl.dart';
// import 'package:datastore/di/injection.dart';
// import 'package:datastore/provider/session/session_provider.dart';
// import 'package:datastore/provider/session/session_provider_imp.dart';
// import 'package:get_it/get_it.dart';
// import 'package:app_settings/provider/AppSettingsProvider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:injectable/injectable.dart';
//
// final getIt = GetIt.instance;
//
// @InjectableInit()
// void configureDependencies(String? environment) {
//   if (!getIt.isRegistered<AppSettingsProvider>()) {
//     getIt.registerLazySingleton<AppSettingsProvider>(() {
//       if (environment == Environment.prod) {
//         return ProdAppSettingsProviderImpl();
//       } else {
//         return DevAppSettingsProviderImpl();
//       }
//     });
//   }
//   if (!getIt.isRegistered<SessionProvider>()) {
//     getIt.registerLazySingleton<SessionProvider>(() {
//       if (environment == Environment.prod) {
//         return ProdSessionProviderImp();
//       } else {
//         return DevSessionProviderImp();
//       }
//     });
//   }
//   configureAppSettingsDependencies(getIt, environment);
//   configureDataStoreDependencies(getIt, environment);
// }