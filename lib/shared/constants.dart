import 'package:flutter/material.dart';

const decorationTextField = InputDecoration(
  // To delete borders
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide.none,
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey,
    ),
  ),

  filled: true,
  contentPadding: const EdgeInsets.all(9),
);
