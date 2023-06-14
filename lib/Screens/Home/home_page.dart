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
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Appbar
              const AppBarHome(),
              //Search TextFormField
              TextFormFieldWidget(searchController: searchController),
              //Image Carousel Container
              const CarouselContainerWidget(),
              //Categories
              const CategoriesHome(),
              const SizedBox(
                height: 20,
              ),
              //Featured Products
              Container(
                height: 1500,
                width: width,
                decoration: BoxDecoration(
                  color: grey,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: const Column(
                  children: [
                    FeaturedProductsWidget(
                      title: "Featured Products",
                    ),
                     SizedBox(
                      height: 25.0,
                    ),
                    CarouselContainerWidget(),
                    SizedBox(
                      height: 20.0,
                    ),
                    FeaturedProductsWidget(
                      title: "Best Sellers",
                    ),
                     SizedBox(
                      height: 25.0,
                    ),
                    CarouselContainerWidget(),
                    SizedBox(
                      height: 20.0,
                    ),
                    FeaturedProductsWidget(
                      title: "New Arrivals",
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
