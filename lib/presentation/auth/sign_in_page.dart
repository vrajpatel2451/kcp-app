import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcp_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:kcp_app/injection.dart';
import 'package:kcp_app/presentation/auth/widget/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),
                const Text(
                  'Hello.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 130,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Log in here',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 130,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SignInForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
