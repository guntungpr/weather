part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;
  const factory ProfileEvent.nameChanged(String name) = _NameChanged;
  const factory ProfileEvent.oldPasswordChanged(String oldPassword) = _OldPasswordChanged;
  const factory ProfileEvent.newPasswordChanged(String newPassword) = _NewPasswordChanged;
  const factory ProfileEvent.obsecureOldPass({required bool value}) = _ObsecureOldPass;
  const factory ProfileEvent.obsecureNewPass({required bool value}) = _ObsecureNewPass;
  const factory ProfileEvent.update() = _Update;
}
