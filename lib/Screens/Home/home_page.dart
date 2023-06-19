import 'dart:developer';

import 'package:ecommerce/Screens/Home/widgets/CarouselContainerWidget.dart';
import 'package:ecommerce/Screens/Home/widgets/Categories.dart';
import 'package:ecommerce/Screens/Home/widgets/appbar_widget.dart';
import 'package:ecommerce/Screens/Home/widgets/featuredProducts.dart';
import 'package:ecommerce/Screens/Home/widgets/teaxtformfield.dart';
import 'package:ecommerce/data/dataprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/colors/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    final dataProvider = Provider.of<DataProvider>(context, listen: false);
    dataProvider.fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    TextEditingController searchController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Appbar
              const AppBarHome(),
              //Search TextFormField
              TextFormFieldWidget(searchController: searchController),
              const SizedBox(
                height: 30.0,
              ),
              //Image Carousel Container
               CarouselContainerWidget(),
              const SizedBox(
                height: 30.0,
              ),
              //Categories
              const CategoriesHome(),
              const SizedBox(
                height: 20,
              ),
              //Featured Products
              Container(
                height: height*1.85,
                width: width,
                decoration:const BoxDecoration(
                  color: Color(0xFFFAFAFA),
                  borderRadius:  BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child:  Column(
                  children: [
                   const FeaturedProductsWidget(
                      title: "Featured Products",
                      seeAllTitle: "Featured Products",
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    CarouselContainerWidget(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const FeaturedProductsWidget(
                      title: "Best Sellers",
                      seeAllTitle: "Best Sellers",
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    CarouselContainerWidget(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const FeaturedProductsWidget(
                      title: "New Arrivals",
                      seeAllTitle: "New Arrivals",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
