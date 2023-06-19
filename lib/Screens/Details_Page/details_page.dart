import 'package:ecommerce/Screens/Details_Page/widgets/appbar_widget.dart';
import 'package:ecommerce/Screens/Details_Page/widgets/footerbuttons.dart';
import 'package:ecommerce/Screens/Details_Page/widgets/imagecontainer.dart';
import 'package:ecommerce/Screens/Details_Page/widgets/reviewwidget.dart';
import 'package:ecommerce/Screens/Details_Page/widgets/sellercontainerwidget.dart';
import 'package:ecommerce/data/model.dart';
import 'package:flutter/material.dart';

import '../Home/widgets/featuredProducts.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    Key? key,
    required this.ecommerceModel,
  }) : super(key: key);
  final Product ecommerceModel;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const AppBarWidgetDetailsPage(),
              const SizedBox(
                height: 20.0,
              ),
              //IMAGE CONTAINER
              DetailImageContainerWidget(
                productImage: ecommerceModel.images,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  25.0,
                  25.0,
                  25.0,
                  0.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //TITLE OF THE PRODUCT
                        Expanded(
                          child: Text(
                            ecommerceModel.title,
                            style: const TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700,
                              overflow: TextOverflow.ellipsis,
                            ),
                            softWrap: false,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Text(
                          //PRICE OF THE PRODUCT
                          "₹ ${ecommerceModel.price}",
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 11.0,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color(
                            0xFFFFC120,
                          ),
                        ),
                        //RATING OF THE PRODUCT
                        Text(
                          "${ecommerceModel.rating}",
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Text(
                          "${80} Review",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 31.0,
                    ),
                    const Divider(
                      height: 1.0,
                      thickness: 1,
                      color: Color(0xFFEDEDED),
                    ),
                    const SizedBox(
                      height: 29.0,
                    ),
                    //SELLER LIST TILE
                    const SellerContainerWidget(),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Divider(
                      height: 1.0,
                      thickness: 1,
                      color: Color(0xFFEDEDED),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Description Product",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      ecommerceModel.description,
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Divider(
                      height: 1.0,
                      thickness: 1,
                      color: Color(0xFFEDEDED),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const ReviewWidget(),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFAFAFA),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      10.0,
                    ),
                    topLeft: Radius.circular(
                      10.0,
                    ),
                  ),
                ),
                width: width,
                height: height * 0.52,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
                  child: FeaturedProductsWidget(
                    title: "Featured Products",
                    seeAllTitle: "Featured Products",
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FooterButtonsWidget(
          eCommerceModel: ecommerceModel,
        ),
      ),
    );
  }
}
