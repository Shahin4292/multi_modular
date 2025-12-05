import 'package:injectable/injectable.dart';

import 'session_provider.dart';

@Injectable(as: SessionProvider,env: [Environment.prod])
class ProdSessionProviderImp extends SessionProvider{
  @override
  String getAccessToken() {
    return "access token from user session Api";
  }

  @override
  String getClientId() {
    return "11111111";
  }

  @override
  String getRefreshToken() {
    return "refresh token from user session Api";
  }

  @override
  String getUserId() {
    return "123456789";
  }
}

@Injectable(as: SessionProvider,env: [Environment.dev])
class DevSessionProviderImp extends SessionProvider{
  @override
  String getAccessToken() {
    return "access token from user session Api";
  }

  @override
  String getClientId() {
    return "22222222";
  }

  @override
  String getRefreshToken() {
    return "refresh token from user session Api";
  }

  @override
  String getUserId() {
    return "123456789";
  }

}