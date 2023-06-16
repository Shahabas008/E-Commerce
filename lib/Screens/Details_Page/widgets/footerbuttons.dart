import 'package:ecommerce/Screens/Details_Page/widgets/showbottomsheet.dart';
import 'package:ecommerce/data/model.dart';
import 'package:flutter/material.dart';

class FooterButtonsWidget extends StatelessWidget {
  const FooterButtonsWidget({Key? key , required this.eCommerceModel}) : super(key: key);
  final ECommerceData eCommerceModel;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: width * 0.4,
          height: height * 0.08,
          child: FloatingActionButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  15.0,
                ),
              ),
            ),
            onPressed: () {
              //ADD TO WISHLIST
            },
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Added ",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Image.asset(
                  "assets/images/Heart.png",
                  width: 20.0,
                  height: 19.0,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: width * 0.1,
        ),
        SizedBox(
          width: width * 0.4,
          height: height * 0.08,
          child: FloatingActionButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  15.0,
                ),
              ),
            ),
            onPressed: () {
              //ADD TO CART
            showBottomSheetFunction(context: context, eCommerceModel: eCommerceModel);
            },
            backgroundColor: Colors.blue.shade900,
            foregroundColor: Colors.white,
            child: const Text(
              "Add to Cart",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
