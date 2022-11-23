// ignore_for_file: prefer_const_constructors

import 'package:e_commerce2/provider/cart.dart';
import 'package:e_commerce2/shared/appbar.dart';
import 'package:e_commerce2/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class checkout extends StatelessWidget {
  const checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final Cartt = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarblue,
        title: Text("checkout"),
        actions: [productsAndPrice()],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 550,
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: Cartt.selectedProducts.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text(Cartt.selectedProducts[index].name),
                    subtitle: Text(
                        "${Cartt.selectedProducts[index].location} -${Cartt.selectedProducts[index].prince}"),
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(Cartt.selectedProducts[index].imgPath),
                    ),
                    trailing:
                        IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
