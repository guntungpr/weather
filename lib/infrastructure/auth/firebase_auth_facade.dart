import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/domain/auth/auth_failure.dart';
import 'package:weather/domain/auth/i_auth_facade.dart';
import 'package:weather/domain/auth/value_objects_auth.dart';
import 'package:weather/domain/core/i_network_service.dart';
import 'package:weather/infrastructure/auth/user_local_model.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final INetworkService _networkService;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._networkService,
  );

  @override
  Future<void> getSignedInUser() async {}

  @override
  Future<Either<AuthFailure, Unit>> register({
    required Email email,
    required Password password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email.value.getOrElse(() => 'FAILURE'),
        password: password.value.getOrElse(() => 'FAILURE'),
      );
      return right(unit);
    } catch (e) {
      // if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
      return left(const AuthFailure.emailAlreadyInUse());
      // } else {
      //   return left(const AuthFailure.serverError());
      // }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signIn({
    required Email email,
    required Password password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email.value.getOrElse(() => 'FAILURE'),
        password: password.value.getOrElse(() => 'FAILURE'),
      );
      return right(unit);
    } catch (e) {
      // if (e.code == 'ERROR_WRONG_PASSWORD' ||
      //     e.code == 'ERROR_USER_NOT_FOUND') {
      return left(const AuthFailure.invalidEmailAndPasswordCombination());
      // } else {
      //   return left(const AuthFailure.serverError());
      // }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final status = await _googleSignIn.signIn();
      if (status == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuth = await status.authentication;

      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );
      return _firebaseAuth
          .signInWithCredential(credential)
          .then((value) => right(unit));
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() {
    return Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
    ]);
  }

  @override
  Future<Either<AuthFailure, UserLocalModel>> signInLocal({
    required Email email,
    required Password password,
  }) async {
    try {
      final Map<String, dynamic> _body = {
        'email': email.value.getOrElse(() => 'FAILURE'),
        'password': password.value.getOrElse(() => '1'),
      };
      final response = await _networkService.dioResponse(
        method: false,
        path: 'http://192.168.1.17/orca_api/public/login',
        parameter: _body,
      );
      final result = response.data as Map<String, dynamic>;
      final UserLocalModel data = UserLocalModel.fromJson(result);
      return right(data);
    } catch (e) {
      return left(const AuthFailure.invalidEmailAndPasswordCombination());
    }
  }
}
