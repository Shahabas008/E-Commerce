import 'package:ecommerce/utils/colors/colors.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';

class DetailImageContainerWidget extends StatelessWidget {
  const DetailImageContainerWidget({Key? key, required this.productImage})
      : super(key: key);
  final List<String> productImage;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
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
        child: FanCarouselImageSlider(
          currentItemShadow: [
            BoxShadow(
              color: grey,
            )
          ],
          autoPlay: false,
          indicatorActiveColor: Colors.black,
          sliderHeight: height * 0.37,
          sliderWidth: width,
          showIndicator: true,
          imageRadius: 10.0,
          imageFitMode: BoxFit.contain,
          imagesLink: productImage,
          isAssets: false,
        ),
      ),
    );
  }
}
