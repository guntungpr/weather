// ignore_for_file: avoid_dynamic_calls, unused_local_variable

// import 'package:code_id_network/code_id_network.dart';
import 'package:code_id_storage/code_id_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/domain/auth/auth_failure.dart';
import 'package:weather/domain/auth/i_auth_repository.dart';
import 'package:weather/domain/auth/value_objects_auth.dart';
// import 'package:weather/domain/core/i_network_service.dart';
import 'package:weather/infrastructure/auth/user_local_model.dart';
// import 'package:weather/infrastructure/core/models/base_response/base_response.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  // final INetworkService _networkService;
  final IStorage _localStorage = Storage;

  @override
  Future<Either<AuthFailure, UserLocalModel>> signInLocal({
    required Email email,
    required Password password,
  }) async {
    try {
      final Map<String, dynamic> _body = {
        'email': email.getOrEmpty(),
        'password': password.getOrEmpty(),
      };
      await _localStorage.openBox('user');
      final _user = await _localStorage.getData(key: 'user');
      if (_user == null) {
        final _json = {
          'name': email.getOrEmpty().split('@')[0],
          'email': email.getOrEmpty(),
          'password': password.getOrEmpty(),
        };
        await _localStorage.putData(data: {'user': _json});
        return right(UserLocalModel.fromJson(_json));
      } else {
        if (email.getOrEmpty() == _user['email'] && password.getOrEmpty() == _user['password']) {
          return right(UserLocalModel(
            email: email.getOrEmpty(),
            name: email.getOrEmpty().split('@')[0],
          ));
        }
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
    } catch (e) {
      return left(const AuthFailure.invalidEmailAndPasswordCombination());
    }
  }
}
