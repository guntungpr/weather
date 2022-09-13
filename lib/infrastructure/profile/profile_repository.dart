// ignore_for_file: avoid_dynamic_calls

import 'package:code_id_storage/code_id_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/domain/auth/value_objects_auth.dart';
import 'package:weather/domain/objects/string_objects.dart';
import 'package:weather/domain/profile/i_profile_repository.dart';
import 'package:weather/domain/profile/profile_failure.dart';
import 'package:weather/infrastructure/auth/user_local_model.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  ProfileRepository();
  final IStorage _localStorage = Storage;

  @override
  Future<UserLocalModel> getProfile() async {
    try {
      await _localStorage.openBox('user');
      final _user = await _localStorage.getData(key: 'user');
      if (_user == null) {
        return UserLocalModel.empty();
      } else {
        final _profile = UserLocalModel(
          email: _user['email'].toString(),
          name: _user['name'].toString(),
        );
        return _profile;
      }
    } catch (e) {
      return UserLocalModel.empty();
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> updateProfile({
    required PersonName name,
    required Password oldPassword,
    required Password newPassword,
  }) async {
    try {
      await _localStorage.openBox('user');
      final _user = await _localStorage.getData(key: 'user');
      if (_user == null) {
        return left(const ProfileFailure.serverError());
      } else {
        if (_user['password'].toString() == oldPassword.getOrNull()) {
          final _json = {
            'name': name.getOrEmpty(),
            'email': _user['email'].toString(),
            'password': newPassword.getOrEmpty(),
          };
          await _localStorage.putData(data: {'user': _json});
          return right(unit);
        } else {
          return left(const ProfileFailure.passwordNotMatch());
        }
      }
    } catch (e) {
      return left(const ProfileFailure.serverError());
    }
  }
}
