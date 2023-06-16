

import 'package:flutter/cupertino.dart';

import '../../data/model.dart';

class CartProvider extends ChangeNotifier{
  List<ECommerceData> cartList = [];

  void addToCart(ECommerceData cartModel) {
    cartList.add(cartModel);
  }
}