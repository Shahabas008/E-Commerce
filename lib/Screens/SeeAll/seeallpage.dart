import 'package:ecommerce/Screens/SeeAll/widgets/appbarwidget.dart';
import 'package:ecommerce/Screens/SeeAll/widgets/itemcontainerseeall.dart';
import 'package:flutter/material.dart';

class SeeAllPage extends StatelessWidget {
  const SeeAllPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const AppBarSeeAllWidget(),
              Padding(
                padding: const EdgeInsets.all(
                  10.0,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    const ItemContainerSeeAllWidget(),
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
