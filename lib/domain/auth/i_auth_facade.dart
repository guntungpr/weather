import 'package:dartz/dartz.dart';
import 'package:weather/domain/auth/auth_failure.dart';
import 'package:weather/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> register({
    required Email email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signIn({
    required Email email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
