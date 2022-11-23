// ignore_for_file: prefer_const_constructors

import 'package:e_commerce2/shared/constants.dart';
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
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 40,
              ),
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: decorationTextField.copyWith(
                    hintText: "Enter your Email:",
                  )),
              const SizedBox(
                height: 30,
              ),
              TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: decorationTextField.copyWith(
                    hintText: "Enter your Password:",
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
