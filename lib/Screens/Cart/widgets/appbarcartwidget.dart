import 'package:ecommerce/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class CartAppBarWidget extends StatelessWidget {
  const CartAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        "My Cart",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            //CLEARING THE CART PAGE
          },
          child:  Text(
            "Clear",
            style: TextStyle(
              color: primary,
              fontSize: 18.0,
            ),
          ),
        ),
      ],
    );
  }
}
