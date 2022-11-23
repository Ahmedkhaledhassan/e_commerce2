// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final bool isPassword;
  final String hinttext;
  final TextInputType textInputTypee;

  MyTextField({
    super.key,
    required this.textInputTypee,
    required this.hinttext,
    required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: textInputTypee,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hinttext,
          // To delete borders
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),

          filled: true,
          contentPadding: const EdgeInsets.all(9),
        ));
  }
}
