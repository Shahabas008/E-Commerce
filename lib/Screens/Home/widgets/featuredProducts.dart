import 'package:ecommerce/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';
import 'package:provider/provider.dart';

import '../../../data/dataprovider.dart';

class FeaturedProductsWidget extends StatelessWidget {
  const FeaturedProductsWidget({Key? key ,required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Consumer<DataProvider>(
      builder: (context, dataProvider, _) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    title,
                    style:const TextStyle(
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
              height: 25.0,
            ),
            Row(children: [
              const SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: SizedBox(
                  height: height * 0.32,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      final snap = dataProvider.eCommerceDataList[index];
                      return SizedBox(
                        width: width * 0.5,
                        height: height * 0.5,
                        child: FillImageCard(
                          contentPadding: const EdgeInsets.all(8.0),
                          heightImage: 100,
                          imageProvider: NetworkImage(snap.image),
                          title: Text(
                            snap.title,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          description: Text(
                            "₹ ${snap.price}",
                            style: const TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          footer: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    const WidgetSpan(
                                      child: Icon(
                                        Icons.star,
                                        size: 14,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "${snap.rating.rate}",
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text("${snap.rating.count} Reviews"),
                              const SizedBox(
                                width: 10.0,
                              ),
                               IconButton(
                                onPressed: () {
                                  //Navigate to the product Action
                                },
                                icon:const Icon(
                                  Icons.more_vert,
                                ),
                              ),

                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 25.0,
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
            ]),
          ],
        );
      },
    );
  }
}
