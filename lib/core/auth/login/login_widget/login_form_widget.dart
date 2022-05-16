// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_print, curly_braces_in_flow_control_structures, must_be_immutable

import 'package:fashion_style/core/auth/register/register_page/register_page.dart';
import 'package:fashion_style/core/form_fields/defaulte_form_field.dart';
import 'package:fashion_style/core/layout/page_layout_interface.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginFormWidgt extends StatefulWidget {
  const LoginFormWidgt({Key? key}) : super(key: key);

  static Future<User?> loginUseingEmailPassword({
    required String password,
    required String email,
    required BuildContext context,
  }) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'use-not-found') print('No user found for that  email');
    }
    return user;
  }

  @override
  State<LoginFormWidgt> createState() => _LoginFormWidgtState();
}

class _LoginFormWidgtState extends State<LoginFormWidgt> {
  final TextEditingController _emailEding = TextEditingController();

  final TextEditingController _passwordEding = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email:'),
        SizedBox(
          height: 2.5,
        ),
        DefaulteFormField.Field(
            controller: _emailEding,
            keyboardType: TextInputType.emailAddress,
            onTap: () {}),
        SizedBox(
          height: 10,
        ),
        Text('Password:'),
        SizedBox(
          height: 2.5,
        ),
        DefaulteFormField.Field(
          onTap: () {},
          controller: _passwordEding,
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () async {
            User? user = await LoginFormWidgt.loginUseingEmailPassword(
                password: _passwordEding.text,
                email: _emailEding.text,
                context: context);
            if (user != null) {
              print('Login');

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageLayoutInterface(),
                ),
              );
            } else {
              print('testtttttttt' + user.toString());
            }
          },
          child: DefaulteFormField.container(
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () async {
            print('Login');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Registerpage(),
              ),
            );
          },
          child: DefaulteFormField.container(
            child: Center(
              child: Text(
                'Sign UP',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () {},
          // ignore: prefer_const_constructors
          child: Text(
            'Forget Pssword ?',

            // ignore: prefer_const_constructors
            style: TextStyle(
              color: Color.fromARGB(255, 146, 227, 169),
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}
