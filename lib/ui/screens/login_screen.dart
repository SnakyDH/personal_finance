import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_finance/ui/layout/home_layout.dart';
import 'package:personal_finance/ui/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String name = 'LoginScreen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          const Text(
            'Login',
            style: TextStyle(fontSize: 30),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Column(children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
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
                    icon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    labelText: 'Enter your password',
                  )),
            ]),
          ),
          SizedBox(
            height: 200,
            child: Column(
              children: [
                FilledButton.icon(
                  icon: const Icon(Icons.login),
                  label: const Text('Login'),
                  onPressed: () => context.goNamed(HomeLayout.name),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account yet?"),
                    TextButton(
                        onPressed: () => context.goNamed(SignUpScreen.name),
                        child: const Text('Sign Up')),
                  ],
                ),
              ],
            ),
          ),
        ]));
  }
}
