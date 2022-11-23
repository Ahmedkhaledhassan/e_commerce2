import 'package:e_commerce2/model/item.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List selectedProducts = [];
  double price = 0;

  add(Item product) {
    selectedProducts.add(product);
    price += product.prince;

    notifyListeners();
  }
}
