import 'package:dartz/dartz.dart';
import 'package:domain/model/failure.dart';
import 'package:login/data/remote/login_remote_data_source.dart';
import 'package:login/data/request/login_request.dart';
import 'package:login/domain/model/login_model.dart';
import 'package:login/domain/repository/login_repository.dart';

class LoginRepositoryImp implements LoginRepository{
  final LoginRemoteDataSource loginRemoteDataSource;
  LoginRepositoryImp(this.loginRemoteDataSource);

  @override
  Future<Either<Failure, LoginModel>> login(LoginRequest loginRequest) {
    loginRemoteDataSource.login(loginRequest);
  }
  
}