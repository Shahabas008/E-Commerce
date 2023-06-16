import 'dart:developer';

import 'package:ecommerce/Screens/Home/widgets/featuredProducts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * 0.9,
      height: height * 1.2,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Review (86)",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                ),
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.star,
                        size: 20,
                        color: Color(
                          0xFFFFC120,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: "5.0",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          //REVIEW CONTAINER 1
          SizedBox(
            width: width,
            height: height * 0.3,
            child: Row(
              children: [
                const Expanded(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage("assets/images/user1.jpg"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Arthur Morgan",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.30,
                          ),
                          const Text(
                            "2 minutes ago",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Color(
                                0xFF838589,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6.17,
                      ),
                      RatingBarIndicator(
                        unratedColor: Colors.white,
                        rating: 2.5,
                        itemCount: 5,
                        itemSize: 18.0,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star_outlined,
                          color: Color(
                            0xFFFFC120,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12.74,
                      ),
                      const Text(
                        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. ",
                        style: TextStyle(
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          //REVIEW CONTAINER 2
          SizedBox(
            width: width,
            height: height * 0.3,
            child: Row(
              children: [
                const Expanded(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage("assets/images/user1.jpg"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Arthur Morgan",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.30,
                          ),
                          const Text(
                            "2 minutes ago",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Color(
                                0xFF838589,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6.17,
                      ),
                      RatingBarIndicator(
                        unratedColor: Colors.white,
                        rating: 2.5,
                        itemCount: 5,
                        itemSize: 18.0,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star_outlined,
                          color: Color(
                            0xFFFFC120,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12.74,
                      ),
                      const Text(
                        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. ",
                        style: TextStyle(
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          // //REVIEW CONTAINER 3
          SizedBox(
            width: width,
            height: height * 0.3,
            child: Row(
              children: [
                const Expanded(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage("assets/images/user1.jpg"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Arthur Morgan",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.30,
                          ),
                          const Text(
                            "2 minutes ago",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Color(
                                0xFF838589,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6.17,
                      ),
                      RatingBarIndicator(
                        unratedColor: Colors.white,
                        rating: 2.5,
                        itemCount: 5,
                        itemSize: 18.0,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star_outlined,
                          color: Color(
                            0xFFFFC120,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12.74,
                      ),
                      const Text(
                        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. ",
                        style: TextStyle(
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            style: OutlinedButton.styleFrom(
              minimumSize: Size(width, height * 0.09,),
              maximumSize: Size(width, height * 0.09,),
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0,),
                side: const BorderSide(width: 1.0,),
              ),
            ),
            onPressed: () {
              //NAVIGATE TO THE SHOW MORE REVIEW
            },
            child: const Text(
              "See All Review",
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
