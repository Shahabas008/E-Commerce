import "package:flutter/material.dart";

class CarouselContainerWidget extends StatelessWidget {
  const CarouselContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(
            width: 20.0,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: SizedBox(
              height: height * 0.25,
              width: width * 0.75,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset(
                  "assets/images/carouselimage1.jpg",
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 25.0,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: SizedBox(
              height: height * 0.25,
              width: width * 0.75,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset(
                  "assets/images/carouselimage2.jpg",
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: SizedBox(
              height: height * 0.25,
              width: width * 0.75,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset(
                  "assets/images/carouselimage3.jpg",
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
        ],
      ),
    );
  }
}
