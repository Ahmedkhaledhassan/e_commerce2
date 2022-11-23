// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:e_commerce2/shared/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Row(
              children: [
                Stack(
                  children: [
                    Positioned(
                      bottom: 22,
                      child: Container(
                          child: Text(
                            "0",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(210, 95, 143, 187),
                              shape: BoxShape.circle)),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_shopping_cart_sharp)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 11),
                  child: Text(
                    "\$10",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
          backgroundColor: appbarblue,
          title: Text("Home"),
        ),
      ),
    );
  }
}
