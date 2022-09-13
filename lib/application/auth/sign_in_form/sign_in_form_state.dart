part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required Email emailAddress,
    required Password password,
    required bool obsecurePass,
    required bool isSubmitted,
    required bool isLoading,
    required Option<Either<AuthFailure, UserLocalModel>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: Email(''),
        password: Password(''),
        obsecurePass: false,
        isSubmitted: false,
        isLoading: false,
        authFailureOrSuccessOption: none(),
      );
}
