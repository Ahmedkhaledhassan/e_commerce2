import 'package:e_commerce2/pages/details_screen.dart';
import 'package:e_commerce2/pages/home.dart';
import 'package:e_commerce2/pages/login.dart';
import 'package:e_commerce2/pages/register.dart';
import 'package:e_commerce2/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
