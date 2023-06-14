import 'package:flutter/material.dart';

class DetailImageContainerWidget extends StatelessWidget {
  const DetailImageContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * 0.9,
      height: height * 0.4,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
        child: Image.asset(
          //CHANGE THE IMAGE AS THE PRODUCT
          "assets/images/carouselimage1.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
