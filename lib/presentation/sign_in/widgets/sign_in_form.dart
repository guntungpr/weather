import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:weather/application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SignInFormBloc>(context);
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authLocal.match(
          (either) => either.fold(
            (l) => l.maybeMap(
              orElse: () {
                FlushbarHelper.createError(
                  message: l.maybeMap(
                    orElse: () => '',
                    serverError: (_) => 'Server Error',
                    cancelledByUser: (_) => 'Cancelled by user',
                    emailAlreadyInUse: (_) => "Email already in use",
                    invalidEmailAndPasswordCombination: (_) => "Invalid email and password",
                  ),
                );
              },
            ),
            (r) => Get.toNamed('/weather'),
          ),
          () => null,
        );
        state.authFailureOrSuccessOption.match(
          (either) => either.fold(
            (l) => l.maybeMap(
              orElse: () {
                FlushbarHelper.createError(
                  message: l.maybeMap(
                    orElse: () => '',
                    serverError: (_) => 'Server Error',
                    cancelledByUser: (_) => 'Cancelled by user',
                    emailAlreadyInUse: (_) => "Email already in use",
                    invalidEmailAndPasswordCombination: (_) => "Invalid email and password",
                  ),
                );
              },
            ),
            (r) => Get.toNamed('/weather'),
          ),
          () => null,
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages ? AutovalidateMode.disabled : AutovalidateMode.always,
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: <Widget>[
              const Icon(
                Icons.cloud,
                color: Colors.blue,
                size: 150,
              ),
              const Text(
                "Weather App",
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value) => bloc.add(SignInFormEvent.emailChanged(value)),
                validator: (_) => bloc.state.emailAddress.value.fold(
                  (f) => f.maybeMap(
                    invalidEmail: (_) => 'Invalid email',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                obscureText: true,
                autocorrect: false,
                onChanged: (value) => bloc.add(SignInFormEvent.passwordChanged(value)),
                validator: (_) => bloc.state.password.value.fold(
                  (f) => f.maybeMap(
                    shortPassword: (_) => 'At least 6 characters',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () => {
                      bloc.add(
                        const SignInFormEvent.signInWithEmailAndPasswordPressed(),
                      )
                    },
                    child: const Text("Sign In"),
                  ),
                  ElevatedButton(
                    onPressed: () => bloc.add(
                      const SignInFormEvent.registerWithEmailAndPasswordPressed(),
                    ),
                    child: const Text("Register"),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => bloc.add(
                  const SignInFormEvent.signInWithGooglePressed(),
                ),
                child: const Text("Sign In Google Account"),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => bloc.add(
                  const SignInFormEvent.signInLocal(),
                ),
                child: const Text("Sign In Local Account"),
              ),
            ],
          ),
        );
      },
    );
  }
}
