import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SignInFormBloc>(context);
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      body: BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  failure.map(
                    cancelledByUser: (_) =>
                        ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Canceled")),
                    ),
                    serverError: (_) =>
                        ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Server Error")),
                    ),
                    emailAlreadyInUse: (_) =>
                        ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Email already in use")),
                    ),
                    invalidEmailAndPasswordCombination: (_) =>
                        ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Invalid email and password"),
                      ),
                    ),
                  );
                },
                (_) {},
              );
            },
          );
        },
        builder: (context, state) {
          return state.isSubmitting
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Form(
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
                          RaisedButton(
                            onPressed: () => {
                              bloc.add(
                                const SignInFormEvent
                                    .signInWithEmailAndPasswordPressed(),
                              )
                            },
                            color: Colors.lightBlue,
                            child: const Text("Sign In"),
                          ),
                          RaisedButton(
                            onPressed: () => bloc.add(
                              const SignInFormEvent
                                  .registerWithEmailAndPasswordPressed(),
                            ),
                            color: Colors.lightBlue,
                            child: const Text("Register"),
                          ),
                        ],
                      ),
                      RaisedButton(
                        onPressed: () => bloc.add(
                            const SignInFormEvent.signInWithGooglePressed()),
                        color: Colors.lightBlue,
                        child: const Text("Sign In Google"),
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
