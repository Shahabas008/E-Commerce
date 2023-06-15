import 'package:ecommerce/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class DetailImageContainerWidget extends StatelessWidget {
  const DetailImageContainerWidget({Key? key, required this.productImage})
      : super(key: key);
  final String productImage;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      decoration:  BoxDecoration(
        color: grey,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            20.0,
          ),
        ),
      ),
      width: width * 0.9,
      height: height * 0.4,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
        child: Image.network(
          //CHANGE THE IMAGE AS THE PRODUCT
          productImage,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
