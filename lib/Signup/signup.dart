import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // const SignupScreen({super.key});
  late String _email, _password;

  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sign Up"),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              const SizedBox(
                height: 35,
              ),
              const Center(
                child: Text(
                  "Create an account",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    contentPadding: const EdgeInsets.all(10),
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                onChanged: (value) {
                  setState(() {
                    _email = value.trim();
                  });
                },
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    contentPadding: const EdgeInsets.all(10),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                onChanged: (value) {
                  setState(() {
                    _password = value.trim();
                  });
                },
              ),
              const SizedBox(
                height: 25,
              ),
              // TextFormField(
              //   obscureText: true,
              //   decoration: InputDecoration(
              //       prefixIcon: const Icon(Icons.lock),
              //       contentPadding: const EdgeInsets.all(10),
              //       hintText: 'Confirm Password',
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(10),
              //       )),
              // ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: (() {
                  auth
                      .createUserWithEmailAndPassword(
                          email: _email, password: _password)
                      .then((_) {
                    Navigator.pushNamed(context, '/verify');
                  });
                }),
                child: const Text("Sign up"),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton.icon(
                onPressed: (() {}),
                icon: const FaIcon(
                  FontAwesomeIcons.google,
                ),
                label: const Text("Sign up With Google"),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                      onPressed: (() {
                        Navigator.pushNamed(context, '/login');
                      }),
                      child: const Text(
                        "LogIn",
                      ))
                ],
              ),
            ]),
          ),
        ));
  }
}
