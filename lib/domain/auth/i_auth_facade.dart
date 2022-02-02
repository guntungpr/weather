import 'package:fpdart/fpdart.dart';
import 'package:weather/domain/auth/auth_failure.dart';
import 'package:weather/domain/auth/value_objects_auth.dart';
import 'package:weather/infrastructure/auth/user_local_model.dart';

abstract class IAuthFacade {
  Future<void> getSignedInUser();
  Future<Either<AuthFailure, Unit>> register({
    required Email email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signIn({
    required Email email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();

  Future<Either<AuthFailure, UserLocalModel>> signInLocal({
    required Email email,
    required Password password,
  });
}
