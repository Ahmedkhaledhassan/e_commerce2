// ignore_for_file: prefer_const_constructors

import 'package:e_commerce2/shared/colors.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text("Details screen"),
      ),
      body: Column(
        children: [
          Image.network(
              "https://as1.ftcdn.net/v2/jpg/04/03/44/18/1000_F_403441840_n2V9oYfDCpAGMO3k93iOtiS0sdmHE1us.jpg"),
          Text(
            "\$10.99",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(4),
                child: Text(
                  "new",
                  style: TextStyle(fontSize: 15),
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 206, 25, 25),
                    borderRadius: BorderRadius.circular(3.5)),
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.star,
                    size: 22,
                    color: Color.fromARGB(255, 230, 208, 17),
                  ),
                  Icon(
                    Icons.star,
                    size: 22,
                    color: Color.fromARGB(255, 230, 208, 17),
                  ),
                  Icon(
                    Icons.star,
                    size: 22,
                    color: Color.fromARGB(255, 230, 208, 17),
                  ),
                  Icon(
                    Icons.star,
                    size: 22,
                    color: Color.fromARGB(255, 230, 208, 17),
                  ),
                  Icon(
                    Icons.star,
                    size: 22,
                    color: Color.fromARGB(255, 230, 208, 17),
                  ),
                ],
              ),
              SizedBox(
                width: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.edit_location_alt,
                    size: 26,
                    color: Color.fromARGB(255, 10, 71, 12),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Books shop",
                    style: TextStyle(fontSize: 17),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
