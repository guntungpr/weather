import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/domain/auth/auth_failure.dart';
import 'package:weather/domain/auth/i_auth_facade.dart';
import 'package:weather/domain/auth/value_objects.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

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
          idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

      return _firebaseAuth
          .signInWithCredential(credential)
          .then((value) => right(unit));
    } on PlatformException catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
}
