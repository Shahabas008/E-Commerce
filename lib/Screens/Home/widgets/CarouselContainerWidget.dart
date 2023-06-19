import "package:ecommerce/data/dataprovider.dart";
import "package:ecommerce/data/model.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class CarouselContainerWidget extends StatelessWidget {
   CarouselContainerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Consumer<DataProvider>(
        builder: (context, dataProvider, _) {

      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
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
                  child: Image.network(dataProvider.eCommerceDataModel!.products[5].thumbnail)
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
                  fit: BoxFit.contain,
                  child: Image.network(dataProvider.eCommerceDataModel!.products[17].thumbnail)
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
    });
  }
}
