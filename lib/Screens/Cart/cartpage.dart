import 'package:ecommerce/Screens/Cart/widgets/appbarcartwidget.dart';
import 'package:ecommerce/Screens/Cart/widgets/itemcontainerwidget.dart';
import 'package:ecommerce/Screens/Cart/widgets/ordercontainerwidget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CartAppBarWidget(),
                  SizedBox(
                    height: 25.0,
                  ),
                  ItemContainerWidget(),
                ],
              ),
            ),
          ),

          OrderContainerWidget(),
        ],
      ),
    );
  }
}
