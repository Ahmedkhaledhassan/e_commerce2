// ignore_for_file: prefer_const_constructors

import 'package:e_commerce2/model/item.dart';
import 'package:e_commerce2/shared/colors.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  Item product;
  Details({required this.product});
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  //const Details({super.key});
  bool isshowmore = true;

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              widget.product.imgPath,
              height: 400,
            ),
            Text(
              "\$ ${widget.product.prince}",
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
                  width: 80,
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
                      widget.product.location,
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
                SizedBox(
                  width: 16,
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Details : ",
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Text(
              "A book is a medium for recording information in the form of writing or images, typically composed of many pages (made of papyrus, parchment, vellum, or paper) bound together and protected by a cover.[1] The technical term for this physical arrangement is codex (plural, codices). In the history of hand-held physical supports for extended written compositions or records, the codex replaces its predecessor, the scroll. A single sheet in a codex is a leaf and each side of a leaf is a page.",
              style: TextStyle(fontSize: 20),
              maxLines: isshowmore ? 6 : null,
              overflow: TextOverflow.fade,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    isshowmore = !isshowmore;
                  });
                },
                child: Text(
                  isshowmore ? "Show more" : "Show Less",
                  style: TextStyle(fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
