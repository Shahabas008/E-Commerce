import 'package:ecommerce/data/dataprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        "Mega Mall",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            //NAVIGATING TO THE WISHLIST
            final provider = Provider.of<DataProvider>(context , listen :false);
            provider.fetchData();
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
