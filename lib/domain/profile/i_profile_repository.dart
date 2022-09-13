import 'package:fpdart/fpdart.dart';
import 'package:weather/domain/auth/value_objects_auth.dart';
import 'package:weather/domain/objects/string_objects.dart';
import 'package:weather/domain/profile/profile_failure.dart';
import 'package:weather/infrastructure/auth/user_local_model.dart';

abstract class IProfileRepository {
  Future<UserLocalModel> getProfile();
  Future<Either<ProfileFailure, Unit>> updateProfile({
    required PersonName name,
    required Password oldPassword,
    required Password newPassword,
  });
}
