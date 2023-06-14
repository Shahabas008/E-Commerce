import 'dart:developer';

import 'package:flutter/material.dart';

class ItemContainerWishListWidget extends StatelessWidget {
  const ItemContainerWishListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height,
      child: GridView.builder(
        itemCount: 5,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.4),
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 11.0,
        ),
        itemBuilder: (context, index) {
          return SizedBox(
            width: width * 0.2,
            height: height * 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * 0.5,
                  height: height * 0.19,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        20.0,
                      ),
                    ),
                    child: Image.asset(
                      "assets/images/carouselimage1.jpg",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "TITLE OF THE PRODUCT",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "₹ PRICE",
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        icon: const Icon(Icons.delete_outline),
                        color: Colors.black,
                        onPressed: () {
                          //DELETING THE ITEM FROM THE WISHLIST
                        },
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_bag_outlined,
                        ),
                        label: const Text(
                          "Add To Bag",
                        ),
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(width * 0.30, height * 0.06),
                          maximumSize: Size(width * 0.30, height * 0.06),
                          backgroundColor: Colors.blue.shade900,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
