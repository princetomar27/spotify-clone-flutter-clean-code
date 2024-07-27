import 'package:dartz/dartz.dart';
import 'package:spotifyflutterclone/src/data/datasources/authentication/auth_service.dart';
import 'package:spotifyflutterclone/src/data/models/authentication/create_user_request_body_model.dart';
import 'package:spotifyflutterclone/src/data/models/authentication/sign_in_user_request_body_model.dart';
import 'package:spotifyflutterclone/src/domain/repository/authentication/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthService datasource;
  AuthRepositoryImpl({required this.datasource});

  @override
  Future<Either> signInUser(SignInUserRequestBodyModel user) async {
    return await datasource.signInUser(user);
  }

  @override
  Future<Either> signUpUser(CreateUserRequestBodyModel user) async {
    return await datasource.signUpUser(user);
  }
}
