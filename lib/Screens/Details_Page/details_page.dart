import 'package:ecommerce/Screens/Details_Page/widgets/appbar_widget.dart';
import 'package:ecommerce/Screens/Details_Page/widgets/footerbuttons.dart';
import 'package:ecommerce/Screens/Details_Page/widgets/imagecontainer.dart';
import 'package:ecommerce/Screens/Details_Page/widgets/reviewwidget.dart';
import 'package:ecommerce/Screens/Details_Page/widgets/sellercontainerwidget.dart';
import 'package:ecommerce/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const AppBarWidgetDetailsPage(),
              const SizedBox(
                height: 20.0,
              ),
              //IMAGE CONTAINER
              const DetailImageContainerWidget(),
              const SizedBox(
                height: 40.0,
              ),
              //TITLE OF THE PRODUCT
              const Row(
                children: [
                  SizedBox(
                    width: 25.0,
                  ),
                  Text(
                    "TITLE OF THE PRODUCT",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              //PRICE OF THE PRODUCT
              const Row(
                children: [
                  SizedBox(
                    width: 25.0,
                  ),
                  Text(
                    "PRICE OF THE PRODUCT",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 25.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  //RATING OF THE PRODUCT
                  Text("5.0"),
                  SizedBox(
                    width: 50.0,
                  ),
                  Text("${80} Review")
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Divider(
                height: 1.0,
                indent: 20.0,
                endIndent: 20.0,
                thickness: 1,
                color: grey,
              ),
              const SizedBox(
                height: 10.0,
              ),
              //SELLER LISTTILE
              const SellerContainerWidget(),
              const SizedBox(
                height: 10.0,
              ),
              Divider(
                height: 1.0,
                indent: 20.0,
                endIndent: 20.0,
                thickness: 1,
                color: grey,
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 25.0,
                  ),
                  Text(
                    "Description Product",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    //DESCRIPTION OF THE PRODUCT
                    Text(
                        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. "),
                  ],
                ),
              ),
              const SizedBox(
                height: 45.0,
              ),
              const ReviewWidget(),
              // const SizedBox(
              //   height: 15.0,
              // ),
              const FooterButtonsWidget(),
              const SizedBox(
                height: 15.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
