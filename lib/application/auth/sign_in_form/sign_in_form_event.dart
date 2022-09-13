part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.initial() = Initial;
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) = PasswordChanged;
  const factory SignInFormEvent.obsecurePassChanged({required bool value}) = ObsecurePassChanged;
  const factory SignInFormEvent.signInLocal() = SignInLocal;
  const factory SignInFormEvent.submit() = Submit;
}
