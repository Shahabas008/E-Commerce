import 'package:ecommerce/Screens/WishList/widgets/itemcontainerwishlist.dart';
import 'package:ecommerce/Screens/WishList/widgets/wishlistappbar.dart';
import 'package:flutter/material.dart';
class WishListPage extends StatelessWidget {
  const WishListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
           WishListAppBarWidget(),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ItemContainerWishListWidget(),
            ),

          ],
        ),
      ),
    );
  }
}
