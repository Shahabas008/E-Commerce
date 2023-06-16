
import 'package:ecommerce/data/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Cart/cartprovider.dart';

void showBottomSheetFunction({required BuildContext context, required ECommerceData eCommerceModel}) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  showModalBottomSheet(
      isScrollControlled: true,
      constraints: BoxConstraints(
        minHeight: height * 0.61,
        maxHeight: height * 0.61,
        maxWidth: width * 0.85,
        minWidth: width * 0.5,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            20.0,
          ),
        ),
      ),
      context: context,
      builder: (context) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10.0,
              ),
            ),
          ),
          width: width,
          height: height * 0.5,
          child: Column(
            children: [
               Padding(
                padding:const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Add to Cart",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    IconButton(
                      onPressed : () {
                        Navigator.pop(context);
                      },
                     icon:const Icon(Icons.close,
                      color: Colors.black,
                      size: 18,)

                    ),
                  ],
                ),
              ),
              const Divider(
                color: Color(0xFFEDEDED),
                height: 1.0,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Text(
                              "Quantity",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                //DECREMENT THE QUANTITY
                              },
                              icon: const Icon(
                                Icons.remove,
                                color: Color(0xFFC4C5C4),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Text(
                              "1",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            IconButton(
                              onPressed: () {
                                //INCREMENT THE QUANTITY
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Color(0xFFC4C5C4),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Divider(
                      color: Color(0xFFEDEDED),
                      height: 1.0,
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      "Variant",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xFFEDEDED)),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            width: width * 0.25,
                            height: height * 0.05,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Black",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xFFEDEDED)),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            width: width * 0.25,
                            height: height * 0.05,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "White",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xFFEDEDED)),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            width: width * 0.25,
                            height: height * 0.05,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Blue",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 26.0,
                    ),
                    const Divider(
                      color: Color(0xFFEDEDED),
                      height: 1.0,
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      "Total",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                     Text(
                      "₹ ${eCommerceModel.price}",
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(width, height*0.06,),
                        backgroundColor: Colors.blue.shade900,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        //ADD TO THE CART
                        final cartProvider = Provider.of<CartProvider>(context);
                        // cartProvider.addToCart(cartModel)
                      },
                      child: const Text(
                        "Add to Cart",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      });
}
