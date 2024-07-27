import 'package:dartz/dartz.dart';
import 'package:spotifyflutterclone/core/usecase/usecase.dart';
import 'package:spotifyflutterclone/src/data/models/authentication/create_user_request_body_model.dart';
import 'package:spotifyflutterclone/src/domain/repository/authentication/auth_repository.dart';

class AuthSignUpUsecase implements UseCase<Either, CreateUserRequestBodyModel> {
  final AuthRepository authRepository;

  AuthSignUpUsecase({required this.authRepository});

  @override
  Future<Either> call(CreateUserRequestBodyModel params) async {
    return authRepository.signUpUser(params);
  }
}
