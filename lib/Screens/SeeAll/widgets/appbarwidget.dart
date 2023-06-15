import 'package:ecommerce/Screens/Cart/cartpage.dart';
import 'package:ecommerce/Screens/WishList/wishlist_page.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors/colors.dart';

class AppBarSeeAllWidget extends StatelessWidget {
  const AppBarSeeAllWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "Mega Mall",
        style: TextStyle(
          color: primary,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            //NAVIGATING TO THE WISHLIST
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const WishListPage(),
              ),
            );
          },
          icon: const Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {
            //NAVIGATING TO THE CART
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const CartPage(),
              ),
            );
          },
          icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
        ),
      ],
    );
  }
}
