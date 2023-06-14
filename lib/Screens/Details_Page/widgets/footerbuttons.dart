import 'package:flutter/material.dart';

class FooterButtonsWidget extends StatelessWidget {
  const FooterButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          style: OutlinedButton.styleFrom(
            minimumSize: Size(width*0.4, height * 0.08),
            maximumSize: Size(width*0.4, height * 0.08),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
          onPressed: () {
            //ADD TO THE WISHLIST
          },
          child: const Text("Add to Wishlist"),
        ),
        ElevatedButton(
          style: OutlinedButton.styleFrom(
            minimumSize: Size(width*0.4, height*0.08),
            maximumSize: Size(width*0.4, height*0.08),
            backgroundColor: Colors.blue.shade900,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
          onPressed: () {
            //ADD TO THE CART
          },
          child: const Text("Add to Screens.Cart"),
        ),
      ],
    );
  }
}
