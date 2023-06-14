import 'package:ecommerce/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class OrderContainerWidget extends StatelessWidget {
  const OrderContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      decoration:  BoxDecoration(
        color: grey,
        borderRadius:const BorderRadius.only(
          topLeft: Radius.circular(
            40.0,
          ),
          topRight: Radius.circular(
            40.0,
          ),
        ),
      ),
      width: width,
      height: height * 0.15,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Total : 2 Items"),
                   SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "₹ Price",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(width * 0.5, height * 0.08),
                      maximumSize: Size(width * 0.5, height * 0.08),
                      backgroundColor: Colors.blue.shade900,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    onPressed: () {
                      //PLACE THE ORDER
                    },
                    child: const Text(
                      "Proceed To Checkout",
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
