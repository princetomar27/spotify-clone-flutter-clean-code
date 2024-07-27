import 'package:dartz/dartz.dart';
import 'package:spotifyflutterclone/core/usecase/usecase.dart';
import 'package:spotifyflutterclone/src/data/models/authentication/sign_in_user_request_body_model.dart';
import 'package:spotifyflutterclone/src/domain/repository/authentication/auth_repository.dart';

class AuthSignInUsecase implements UseCase<Either, SignInUserRequestBodyModel> {
  final AuthRepository authRepository;

  AuthSignInUsecase({required this.authRepository});

  @override
  Future<Either> call(SignInUserRequestBodyModel params) async {
    return authRepository.signInUser(params);
  }
}
