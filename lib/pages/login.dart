// ignore_for_file: prefer_const_constructors

import 'package:e_commerce2/shared/custom_textfield.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            // ignore: prefer_const_constructors
            children: [
              const SizedBox(
                height: 40,
              ),
              MyTextField(
                textInputTypee: TextInputType.emailAddress,
                isPassword: false,
                hinttext: "Enter your Email:",
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                textInputTypee: TextInputType.text,
                isPassword: true,
                hinttext: "Enter your passwod:",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
