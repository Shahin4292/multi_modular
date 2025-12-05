
import 'package:data/factory/dio_factory.dart';
import 'package:datastore/provider/preferences/preferences_provider.dart';
import 'package:datastore/provider/preferences/preferences_provider_impl.dart';
import 'package:datastore/provider/session/session_provider.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data_module_keys.dart';

@module
abstract class DataModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  PreferencesProvider providePreferencesProviderImpl(SharedPreferences prefs) =>
      PreferencesProviderImpl(prefs);

  // @lazySingleton
  // SessionProvider provideSessionProviderImpl(SharedPreferences prefs) => PreferencesProviderImpl(prefs);


  // provide baseUrl
  @Named(DataModuleKeys.baseUrl)
  String provideBaseUrl(PreferencesProvider preferencesProvider) =>
      preferencesProvider.getBaseUrl();

  @Named(DataModuleKeys.accessToken)
  String provideAccessToken(SessionProvider sessionProvider) =>
      sessionProvider.getAccessToken();

  @Named(DataModuleKeys.language)
  String provideLanguage(PreferencesProvider preferencesProvider) =>
      preferencesProvider.getAppLanguage();

  @lazySingleton
  Future<Dio> dio(
      @Named(DataModuleKeys.baseUrl) String baseUrl,
      @Named(DataModuleKeys.accessToken) String accessToken,
      @Named(DataModuleKeys.language) String language) async {
    final dioFactory = DioFactory(
        baseUrl: baseUrl,
        accessToken: accessToken,
        language: language);

    return dioFactory.getDio();
  }
}