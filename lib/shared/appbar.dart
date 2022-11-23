import 'package:e_commerce2/pages/checkout.dart';
import 'package:e_commerce2/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class productsAndPrice extends StatelessWidget {
  const productsAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Consumer<Cart>(builder: ((context, CartInstancee, child) {
          return Stack(
            children: [
              Positioned(
                bottom: 22,
                child: Container(
                    child: Text(
                      "${CartInstancee.selectedProducts.length}",
                      style: TextStyle(
                          fontSize: 12, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(210, 95, 143, 187),
                        shape: BoxShape.circle)),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => checkout(),
                      ),
                    );
                  },
                  icon: Icon(Icons.add_shopping_cart_sharp)),
            ],
          );
        })),
        Padding(
          padding: const EdgeInsets.only(right: 11),
          child: Text(
            "\$0",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );

    ;
  }
}
