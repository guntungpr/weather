// ignore_for_file: require_trailing_commas

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/domain/auth/auth_failure.dart';
import 'package:weather/domain/auth/i_auth_repository.dart';
import 'package:weather/domain/auth/value_objects_auth.dart';
import 'package:weather/infrastructure/auth/user_local_model.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthRepository _authRepository;

  SignInFormBloc(this._authRepository) : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) async {
      await event.map(
        initial: (e) async {},
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
        obsecurePassChanged: (e) {
          emit(state.copyWith(obsecurePass: e.value));
        },
        signInLocal: (e) async {
          await Future.delayed(Duration.zero);
          if (state.emailAddress.isValid()) {
            emit(state.copyWith(
              isLoading: true,
              authFailureOrSuccessOption: none(),
            ));
            final failureOrSuccess = await _authRepository.signInLocal(
              email: state.emailAddress,
              password: state.password,
            );
            emit(state.copyWith(
              authFailureOrSuccessOption: optionOf(failureOrSuccess),
              isLoading: false,
            ));
          } else {
            emit(state.copyWith(authFailureOrSuccessOption: none()));
          }
          add(const SignInFormEvent.submit());
        },
        submit: (e) async {
          await Future.delayed(Duration.zero);
          emit(state.copyWith(isSubmitted: true));
          emit(state.copyWith(isSubmitted: false));
        },
      );
    });
  }
}
