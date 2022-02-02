// ignore_for_file: require_trailing_commas

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/domain/auth/auth_failure.dart';
import 'package:weather/domain/auth/i_auth_facade.dart';
import 'package:weather/domain/auth/value_objects_auth.dart';
import 'package:weather/infrastructure/auth/user_local_model.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) async {
      await event.map(
        emailChanged: (e) async {
          emit(state.copyWith(
            emailAddress: Email(e.emailStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        passwordChanged: (e) async {
          emit(state.copyWith(
            password: Password(e.passwordStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        registerWithEmailAndPasswordPressed: (e) async {
          if (state.emailAddress.isValid() && state.password.isValid()) {
            emit(state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ));

            final failureOrSuccess = await _authFacade.register(
              email: state.emailAddress,
              password: state.password,
            );

            emit(state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: optionOf(failureOrSuccess),
            ));
          }
          emit(state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: none(),
          ));
        },
        signInWithEmailAndPasswordPressed: (e) async {
          if (state.emailAddress.isValid() && state.password.isValid()) {
            emit(state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ));
            final failureOrSuccess = await _authFacade.signIn(
              email: state.emailAddress,
              password: state.password,
            );

            emit(state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: some(failureOrSuccess),
            ));
          }
          emit(state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: none(),
          ));
        },
        signInWithGooglePressed: (e) async {
          emit(state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ));
          final status = await _authFacade.signInWithGoogle();
          emit(state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: some(status),
          ));
        },
        signInLocal: (e) async {
          if (state.emailAddress.isValid()) {
            emit(state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ));
            final failureOrSuccess = await _authFacade.signInLocal(
              email: state.emailAddress,
              password: state.password,
            );
            emit(state.copyWith(
              isSubmitting: false,
              authLocal: some(failureOrSuccess),
            ));
          }
          emit(state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: none(),
          ));
        },
      );
    });
  }
}
