// ignore_for_file: prefer_const_constructors

import 'package:e_commerce2/pages/register.dart';
import 'package:e_commerce2/shared/colors.dart';
import 'package:e_commerce2/shared/constants.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(243, 186, 207, 194),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 17),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(BTNgreen),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do not have an account ?",
                        style: TextStyle(fontSize: 18)),
                    //TextButton.icon(
                    //onPressed: (){},
                    //icon: Icon(Icons.person, color: Colors.black,size: 24.0,),
                    //label: Text('Logout', style: TextStyle(color: Colors.black)),)
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      },
                      child: Text('Sign Up',
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
