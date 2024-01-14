import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_finance/ui/screens/login_screen.dart';
import 'package:personal_finance/ui/layout/home_layout.dart';

class SignUpScreen extends StatelessWidget {
  static const name = 'signUp';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          const Text(
            'Sign Up',
            style: TextStyle(fontSize: 30),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Column(
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                    labelText: 'Enter your email',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    obscureText: true,
                    autocorrect: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                      labelText: 'Enter your password',
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: Column(children: [
              FilledButton.icon(
                icon: const Icon(Icons.login),
                label: const Text('Sign Up'),
                onPressed: () => context.goNamed(HomeLayout.name),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                      onPressed: () => context.goNamed(LoginScreen.name),
                      child: const Text('Log In')),
                ],
              ),
            ]),
          ),
        ]));
  }
}
