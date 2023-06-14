import 'package:flutter/material.dart';

import '../../../utils/colors/colors.dart';

class ItemContainerWidget extends StatelessWidget {
  const ItemContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        //NAVIGATE TO THE DETAIL PAGE
      },
      child: SizedBox(
        height: height * 0.20,
        width: width*0.9,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/user1.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 25.0,
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Category",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "TITLE",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  const Text(
                    "₹ PRICE",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          //DECREMENT THE QUANTITY
                        },
                        icon:  Icon(
                          Icons.remove_circle,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Text("1"),
                      const SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        onPressed: () {
                          //INCREMENT THE QUANTITY
                        },
                        icon:  Icon(
                          Icons.add_circle,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      const SizedBox(
                        width: 115.0,
                      ),
                      IconButton(
                        onPressed: () {
                          //DELETING THE PRODUCT
                        },
                        icon:  Icon(
                          Icons.delete_rounded,
                          color: primary,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
