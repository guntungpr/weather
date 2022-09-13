part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required UserLocalModel profile,
    required Option<Either<ProfileFailure, Unit>> failureOrSuccess,
    required PersonName name,
    required Password oldPassword,
    required Password newPassword,
    required bool obsecureOldPass,
    required bool obsecureNewPass,
    required bool isLoading,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        profile: UserLocalModel.empty(),
        failureOrSuccess: none(),
        name: PersonName(''),
        newPassword: Password(''),
        oldPassword: Password(''),
        obsecureOldPass: false,
        obsecureNewPass: false,
        isLoading: false,
      );
}
