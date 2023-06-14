import 'package:flutter/material.dart';

class AppBarWidgetDetailsPage extends StatelessWidget {
  const AppBarWidgetDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
      ),
      title: const Text("Detail Product",
      style: TextStyle(
        color: Colors.black
      ),),
      centerTitle: true,
      actions: [

        IconButton(
          onPressed: () {
            //NAVIGATING TO THE WISHLIST
          },
          icon: const Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {
            //NAVIGATING TO THE CART
          },
          icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
        ),
      ],
    );
  }
}
