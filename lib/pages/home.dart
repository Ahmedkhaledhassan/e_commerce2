// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_const_constructors

import 'package:e_commerce2/model/item.dart';
import 'package:e_commerce2/shared/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 34),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: GridTile(
                    child: Stack(children: [
                      Positioned(
                        top: -20,
                        bottom: -15,
                        right: 25,
                        left: 25,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.network(items[index].imgPath),
                        ),
                      ),
                    ]),
                    footer: GridTileBar(
// backgroundColor: Color.fromARGB(66, 73, 127, 110),
                      trailing: IconButton(
                          color: Color.fromARGB(255, 60, 100, 119),
                          onPressed: () {},
                          icon: Icon(Icons.add)),

                      leading: Text(
                        "\$30.99",
                        style: TextStyle(fontSize: 18),
                      ),

                      title: Text(
                        "",
                      ),
                    ),
                  ),
                );
              }),
        ),
        drawer: Drawer(
            child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Products"),
                  leading: Icon(Icons.add_shopping_cart_sharp),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help_center),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Logout"),
                  leading: Icon(Icons.logout_rounded),
                  onTap: () {},
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: Text("Developed by Ahmed Khaled © 2022",
                  style: TextStyle(fontSize: 16)),
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
