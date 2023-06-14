import 'package:ecommerce/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class CategoriesHome extends StatelessWidget {
  const CategoriesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Categories",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //Navigate to the showDialog of the categories
                  },
                  child:  Text(
                    "See all",
                    style: TextStyle(
                      color: primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          //CATEGORIES
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 25.0,
                ),
                //FOOD
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.lightGreen.shade100,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            20.0,
                          ),
                        ),
                      ),
                      height: height * 0.06,
                      width: width * 0.1,
                      child: const Icon(
                        Icons.fastfood_outlined,
                        color: Colors.lightGreen,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Foods")
                  ],
                ),
                const SizedBox(
                  width: 25.0,
                ),
                //GIFT
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.pink.shade50,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            20.0,
                          ),
                        ),
                      ),
                      height: height * 0.06,
                      width: width * 0.1,
                      child: const Icon(
                        Icons.card_giftcard_outlined,
                        color: Colors.pink,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Gifts")
                  ],
                ),
                const SizedBox(
                  width: 25.0,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade50,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            20.0,
                          ),
                        ),
                      ),
                      height: height * 0.06,
                      width: width * 0.1,
                      child: const Icon(
                        Icons.style_outlined,
                        color: Colors.yellow,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Fashion")
                  ],
                ),
                const SizedBox(
                  width: 25.0,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade50,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            20.0,
                          ),
                        ),
                      ),
                      height: height * 0.06,
                      width: width * 0.1,
                      child: const Icon(
                        Icons.laptop_chromebook_outlined,
                        color: Colors.indigo,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Gadgets")
                  ],
                ),
                const SizedBox(
                  width: 25.0,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            20.0,
                          ),
                        ),
                      ),
                      height: height * 0.06,
                      width: width * 0.1,
                      child: const Icon(
                        Icons.my_library_books_outlined,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Books")
                  ],
                ),
                const SizedBox(
                  width: 25.0,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal.shade50,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            20.0,
                          ),
                        ),
                      ),
                      height: height * 0.06,
                      width: width * 0.1,
                      child: const Icon(
                        Icons.chair_outlined,
                        color: Colors.teal,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Furniture")
                  ],
                ),
                const SizedBox(
                  width: 25.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
