import 'package:ecommerce/utils/colors/colors.dart';
import 'package:flutter/material.dart';
class SellerContainerWidget extends StatelessWidget {
  const SellerContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: const CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage("assets/images/carouselimage2.jpg"),
      ),
      title: const Text("Shop Larson Electronics"),
      subtitle: Row(
        children: [
          const Text("Official Store"),
          const SizedBox(
            width: 20.0,
          ),
          Icon(Icons.verified_user_rounded,
          color: primary,),
        ],
      ),
    );
  }
}
