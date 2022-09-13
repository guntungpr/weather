import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:weather/application/auth/profile/profile_bloc.dart';
import 'package:weather/presentation/core/flushbar/custom_flushbar.dart';
import 'package:weather/presentation/core/hook/text_editing_hook.dart';
import 'package:weather/presentation/core/text_editing/text_editing_controller_workaround.dart';

class ProfilePage extends HookWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingControllerWorkaround _nameController = useCodeTextEditingController();
    final TextEditingControllerWorkaround _oldPassController = useCodeTextEditingController();
    final TextEditingControllerWorkaround _newPassController = useCodeTextEditingController();
    final _bloc = context.read<ProfileBloc>();
    _bloc.add(const ProfileEvent.started());
    return BlocConsumer<ProfileBloc, ProfileState>(
      listenWhen: (p, c) => p.failureOrSuccess != c.failureOrSuccess || p.profile != c.profile,
      listener: (context, state) {
        state.failureOrSuccess.match(
          (t) => t.fold(
            (l) {
              CustomFlushbar(
                context,
                message: l.maybeWhen(
                  orElse: () => 'Terjadi kesalahan, silahkan coba lagi',
                  serverError: () => 'Terjadi kesalahan, silahkan coba lagi',
                  passwordNotMatch: () => 'Password salah',
                ),
                eCustomFlushbarType: ECustomFlushbarType.error,
              ).show();
            },
            (r) {
              CustomFlushbar(
                context,
                message: 'Berhasil update profile',
                eCustomFlushbarType: ECustomFlushbarType.success,
              ).show();
              _oldPassController.clear();
              _newPassController.clear();
              _bloc.add(const ProfileEvent.oldPasswordChanged(''));
              _bloc.add(const ProfileEvent.newPasswordChanged(''));
            },
          ),
          () => null,
        );
        if (_nameController.text.isEmpty) {
          _nameController.setTextAndPosition(state.profile.name);
          _bloc.add(ProfileEvent.nameChanged(state.profile.name));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: const Text('Profile')),
          body: state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: ListView(
                    padding: const EdgeInsets.all(8.0),
                    children: [
                      const SizedBox(height: 24),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: 'Name',
                        ),
                        controller: _nameController,
                        autocorrect: false,
                        onChanged: (value) => _bloc.add(ProfileEvent.nameChanged(value)),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () => _bloc.add(ProfileEvent.obsecureOldPass(value: !state.obsecureOldPass)),
                            icon: Icon(
                              state.obsecureOldPass ? Icons.visibility : Icons.visibility_off,
                            ),
                          ),
                          prefixIcon: const Icon(Icons.lock),
                          labelText: 'Old Password',
                        ),
                        controller: _oldPassController,
                        obscureText: !state.obsecureOldPass,
                        autocorrect: false,
                        onChanged: (value) => _bloc.add(ProfileEvent.oldPasswordChanged(value)),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () => _bloc.add(ProfileEvent.obsecureNewPass(value: !state.obsecureNewPass)),
                            icon: Icon(
                              state.obsecureNewPass ? Icons.visibility : Icons.visibility_off,
                            ),
                          ),
                          prefixIcon: const Icon(Icons.lock),
                          labelText: 'New Password',
                        ),
                        controller: _newPassController,
                        obscureText: !state.obsecureNewPass,
                        autocorrect: false,
                        onChanged: (value) => _bloc.add(ProfileEvent.newPasswordChanged(value)),
                      ),
                      const SizedBox(height: 30),
                      IgnorePointer(
                        ignoring: state.name.getOrEmpty() == '' || state.oldPassword.getOrEmpty() == '' || state.newPassword.getOrEmpty() == '',
                        child: ElevatedButton(
                          onPressed: () => _bloc.add(const ProfileEvent.update()),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              state.name.getOrEmpty() == '' || state.oldPassword.getOrEmpty() == '' || state.newPassword.getOrEmpty() == ''
                                  ? Colors.grey
                                  : Colors.blue,
                            ),
                          ),
                          child: const Text("Ubah"),
                        ),
                      ),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
