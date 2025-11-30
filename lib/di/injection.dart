// import 'package:app_settings/di/injection.dart';
// import 'package:get_it/get_it.dart';
// import 'package:injectable/injectable.dart';
// import 'package:multi_modular/di/injection.config.dart';

// final getIt = GetIt.instance;
//
// @InjectableInit()
// void configureDependencies(String? environment){
//   getIt.init(environment: environment);
//   configureAppSettingsDependencies(getIt, environment);
// }

import 'package:app_settings/di/injection.dart';
import 'package:app_settings/provider/AppSettingsProviderImpl.dart';
import 'package:get_it/get_it.dart';
import 'package:app_settings/provider/AppSettingsProvider.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

void configureDependencies(String? environment) {
  if (!getIt.isRegistered<AppSettingsProvider>()) {
    getIt.registerLazySingleton<AppSettingsProvider>(() {
      if (environment == Environment.prod) {
        return ProdAppSettingsProviderImpl();
      } else {
        return DevAppSettingsProviderImpl();
      }
    });
  }
  configureAppSettingsDependencies(getIt, environment);
}