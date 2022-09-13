import 'package:fpdart/fpdart.dart';
import 'package:weather/domain/auth/auth_failure.dart';
import 'package:weather/domain/auth/value_objects_auth.dart';
import 'package:weather/infrastructure/auth/user_local_model.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, UserLocalModel>> signInLocal({
    required Email email,
    required Password password,
  });
}
