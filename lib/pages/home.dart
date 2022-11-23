// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_const_constructors

import 'package:e_commerce2/shared/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
            child: Column(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://tse1.mm.bing.net/th?id=OIP.oiWY-o1RpBabm0fzFow9TwHaEQ&pid=Api&P=0"),
                      fit: BoxFit.cover),
                ),
                currentAccountPicture: CircleAvatar(
                    radius: 55,
                    backgroundImage: NetworkImage(
                        "https://collectionimages.npg.org.uk/large/mw71457/David-Bomberg-Self-Portrait-with-Pipe.jpg")),
                accountName: Text("Ahmed Khaled ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                    )),
                accountEmail: Text("ahmedkhaledhasa40@gmail.com")),
            ListTile(
              title: Text("Products"),
              leading: Icon(Icons.add_shopping_cart_sharp),
              onTap: () {},
            )
          ],
        )),
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
