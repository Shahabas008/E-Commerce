import 'package:ecommerce/Screens/SeeAll/seeallpage.dart';
import 'package:ecommerce/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../data/dataprovider.dart';
import '../../Details_Page/details_page.dart';

class FeaturedProductsWidget extends StatelessWidget {
  const FeaturedProductsWidget({
    Key? key,
    required this.title,
    required this.seeAllTitle,
  }) : super(key: key);
  final String title;
  final String seeAllTitle;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Consumer<DataProvider>(
      builder: (context, dataProvider, _) {
        return dataProvider.eCommerceDataModel == null
            ? const CircularProgressIndicator()
            : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            //Navigate to the showDialog of the categories
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => SeeAllPage(
                                  title: seeAllTitle,
                                ),
                              ),
                            );
                          },
                          child: Text(
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
                    height: 24.0,
                  ),
                  Row(children: [
                    // const SizedBox(
                    //   width: 20.0,
                    // ),
                    Expanded(
                      child: SizedBox(
                        height: height * 0.285,
                        child: ListView.separated(
                          padding: const EdgeInsets.only(left: 15.0),
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            final eCommerceObject =
                                dataProvider.eCommerceDataModel!.products[index];
                            return GestureDetector(
                              onTap: () {
                                //NAVIGATE TO THE DETAILS PAGE

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => DetailsPage(
                                        ecommerceModel: eCommerceObject),
                                  ),
                                );
                              },
                              child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        10.0,
                                      ),
                                    ),
                                  ),
                                  width: width * 0.5,
                                  height: height * 0.5,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            12.5, 15.0, 18.5, 25.0),
                                        child: SizedBox(
                                          width: width,
                                          height: height * 0.09,
                                          child: Image.network(
                                            eCommerceObject.images.first,
                                            width: width,
                                            height: height,
                                            // fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                          10.0,
                                          0.0,
                                          15.0,
                                          15.0,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              eCommerceObject.title,
                                              maxLines: 1,
                                              softWrap: true,
                                              style: const TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 4.0,
                                            ),
                                            Text(
                                              " ${eCommerceObject.price}",
                                              textAlign: TextAlign.left,
                                              style: const TextStyle(
                                                color: Color(0xFFFE3A30),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10.5,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                RichText(
                                                  text: const TextSpan(
                                                    children: [
                                                      WidgetSpan(
                                                        child: Icon(
                                                          Icons.star,
                                                          size: 15.0,
                                                          color: Color(
                                                            0xFFFFC120,
                                                          ),
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: "5.0",
                                                        style: TextStyle(
                                                          fontSize: 10.0,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Text(
                                                  "80 Reviews",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10.0,
                                                  ),
                                                ),
                                                IconButton(
                                                  onPressed: () {
                                                    //MORE
                                                  },
                                                  icon: const Icon(
                                                    Icons.more_vert,
                                                    size: 18.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
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
                    // const SizedBox(
                    //   width: 20.0,
                    // ),
                  ]),
                ],
              );
      },
    );
  }
}
