import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/domain/auth/value_objects_auth.dart';
import 'package:weather/domain/objects/string_objects.dart';
import 'package:weather/domain/profile/i_profile_repository.dart';
import 'package:weather/domain/profile/profile_failure.dart';
import 'package:weather/infrastructure/auth/user_local_model.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileRepository _iProfileRepository;
  ProfileBloc(this._iProfileRepository) : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          emit(ProfileState.initial());
          emit(state.copyWith(isLoading: true));
          final _profile = await _iProfileRepository.getProfile();
          emit(state.copyWith(profile: _profile, isLoading: false));
          await Future.delayed(const Duration(milliseconds: 200));
          emit(state.copyWith(profile: UserLocalModel.empty()));
        },
        nameChanged: (e) {
          emit(state.copyWith(name: PersonName(e.name)));
        },
        oldPasswordChanged: (e) {
          emit(state.copyWith(oldPassword: Password(e.oldPassword)));
        },
        newPasswordChanged: (e) {
          emit(state.copyWith(newPassword: Password(e.newPassword)));
        },
        obsecureOldPass: (e) {
          emit(state.copyWith(obsecureOldPass: e.value));
        },
        obsecureNewPass: (e) {
          emit(state.copyWith(obsecureNewPass: e.value));
        },
        update: (e) async {
          emit(state.copyWith(isLoading: true));
          final _update = await _iProfileRepository.updateProfile(
            name: state.name,
            oldPassword: state.oldPassword,
            newPassword: state.newPassword,
          );
          emit(state.copyWith(failureOrSuccess: optionOf(_update), isLoading: false));
          await Future.delayed(const Duration(milliseconds: 200));
          emit(state.copyWith(failureOrSuccess: none()));
        },
      );
    });
  }
}
