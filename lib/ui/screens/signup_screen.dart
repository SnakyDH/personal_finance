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
            child: Column(children: [
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  labelText: 'Enter your email',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                  obscureText: true,
                  autocorrect: false,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    labelText: 'Enter your password',
                  )),
              const SizedBox(height: 20),
              const Text('Or LogIn here'),
              TextButton.icon(
                  onPressed: () => context.goNamed(LoginScreen.name),
                  icon: const Icon(Icons.app_registration),
                  label: const Text('Log In')),
            ]),
          ),
          FilledButton.icon(
            icon: const Icon(Icons.login),
            label: const Text('Sign Up'),
            onPressed: () => context.goNamed(HomeLayout.name),
          ),
        ]));
  }
}
