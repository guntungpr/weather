import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:weather/presentation/routers/routers.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
          if (state.isSubmitted) {
            state.authFailureOrSuccessOption.match(
              (t) => t.fold(
                (l) => FlushbarHelper.createError(
                  message: l.maybeWhen(
                    orElse: () => '',
                    serverError: () => 'Server Error',
                    cancelledByUser: () => 'Cancelled by user',
                    emailAlreadyInUse: () => "Email already in use",
                    invalidEmailAndPasswordCombination: () => "Invalid email and password",
                  ),
                ).show(context),
                (r) => context.router.push(const HomeWrapperRoute()),
              ),
              () => null,
            );
          }
        },
        builder: (context, state) {
          final bloc = context.read<SignInFormBloc>();
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Form(
              autovalidateMode: AutovalidateMode.always,
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
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () => bloc.add(SignInFormEvent.obsecurePassChanged(value: !state.obsecurePass)),
                        icon: Icon(
                          state.obsecurePass ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                      labelText: 'Password',
                    ),
                    obscureText: !state.obsecurePass,
                    autocorrect: false,
                    onChanged: (value) => bloc.add(SignInFormEvent.passwordChanged(value)),
                    validator: (_) => bloc.state.password.value.fold(
                      (f) => f.maybeMap(
                        lengthTooShort: (_) => 'At least 6 characters',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
                  ),
                  const SizedBox(height: 30),
                  if (state.isLoading)
                    const Center(child: CircularProgressIndicator())
                  else
                    ElevatedButton(
                      onPressed: () => bloc.add(const SignInFormEvent.signInLocal()),
                      child: const Text("Sign In"),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
