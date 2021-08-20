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
        state.authLocal.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                failure.map(
                  cancelledByUser: (_) => Get.snackbar(
                    "Error",
                    "Cancelled by user",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.red,
                  ),
                  serverError: (_) => Get.snackbar(
                    "Error",
                    "Server Error",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.red,
                  ),
                  emailAlreadyInUse: (_) => Get.snackbar(
                    "Error",
                    "Email already in use",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.red,
                  ),
                  invalidEmailAndPasswordCombination: (_) => Get.snackbar(
                    "Error",
                    "Invalid email and password",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.red,
                  ),
                );
              },
              (_) {
                Get.toNamed('/weather');
              },
            );
          },
        );
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                failure.map(
                  cancelledByUser: (_) => Get.snackbar(
                    "Error",
                    "Cancelled by user",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.red,
                  ),
                  serverError: (_) => Get.snackbar(
                    "Error",
                    "Server Error",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.red,
                  ),
                  emailAlreadyInUse: (_) => Get.snackbar(
                    "Error",
                    "Email already in use",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.red,
                  ),
                  invalidEmailAndPasswordCombination: (_) => Get.snackbar(
                    "Error",
                    "Invalid email and password",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.red,
                  ),
                );
              },
              (_) {
                Get.toNamed('/weather');
              },
            );
          },
        );
      },
      builder: (context, state) {
        return Form(
          autovalidate: state.showErrorMessages,
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
                onChanged: (value) =>
                    bloc.add(SignInFormEvent.emailChanged(value)),
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
                onChanged: (value) =>
                    bloc.add(SignInFormEvent.passwordChanged(value)),
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
                        const SignInFormEvent
                            .signInWithEmailAndPasswordPressed(),
                      )
                    },
                    child: const Text("Sign In"),
                  ),
                  ElevatedButton(
                    onPressed: () => bloc.add(
                      const SignInFormEvent
                          .registerWithEmailAndPasswordPressed(),
                    ),
                    child: const Text("Register"),
                  ),
                ],
              ),
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
