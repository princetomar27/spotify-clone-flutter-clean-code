import 'package:get_it/get_it.dart';
import 'package:spotifyflutterclone/src/data/datasources/authentication/auth_service.dart';
import 'package:spotifyflutterclone/src/data/repository/authentication/auth_repository_impl.dart';
import 'package:spotifyflutterclone/src/domain/repository/authentication/auth_repository.dart';
import 'package:spotifyflutterclone/src/domain/usecases/authentication/auth_sign_up_usecase.dart';

import 'src/domain/usecases/authentication/auth_sign_in_usecase.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  // Datasources
  registerDatasources();

  // Repositories
  registerRepositories();
  sl.registerSingleton<AuthService>(
    AuthServiceImpl(),
  );

  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(
      datasource: sl(),
    ),
  );
  sl.registerSingleton<AuthSignUpUsecase>(
    AuthSignUpUsecase(
      authRepository: sl(),
    ),
  );

  sl.registerSingleton<AuthSignInUsecase>(
    AuthSignInUsecase(
      authRepository: sl(),
    ),
  );

  registerUseCases();
}

void registerDatasources() {}

void registerRepositories() {}

void registerUseCases() {}
