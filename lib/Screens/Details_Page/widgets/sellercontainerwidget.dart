import 'package:ecommerce/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class SellerContainerWidget extends StatelessWidget {
  const SellerContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading:  CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage("assets/images/carouselimage2.jpg"),
      ),
      title:  Text("Shop Larson Electronics"),
      subtitle: Row(
        children: [
           Text("Official Store"),
           SizedBox(
            width: 7.92,
          ),
          Icon(
            Icons.verified_user_rounded,
            color: Colors.blue,
          ),
        ],
      ),
      trailing:  Icon(
        Icons.arrow_forward_ios_outlined,
        size: 15.0,
        color: Color(
          0xFF838589,
        ),
      ),
    );
  }
}
