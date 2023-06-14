import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
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
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.yellow,
                      ),
                    ),
                    TextSpan(
                      text: "5.0",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 35.0,
          ),
          //REVIEW CONTAINER 1
          Container(
            width: width,
            height: height * 0.3,
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("assets/images/user1.jpg"),
                    ),
                    const SizedBox(
                      width: 18.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Arthur Morgan",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        RatingBarIndicator(
                          rating: 2.5,
                          itemCount: 5,
                          itemSize: 30.0,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. "),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          //REVIEW CONTAINER 2
          Container(
            width: width,
            height: height * 0.3,
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("assets/images/user2.png"),
                    ),
                    const SizedBox(
                      width: 18.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Alan Jacob",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        RatingBarIndicator(
                          rating: 2,
                          itemCount: 5,
                          itemSize: 30.0,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. "),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          //REVIEW CONTAINER 3
          Container(
            width: width,
            height: height * 0.3,
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("assets/images/user3.jpg"),
                    ),
                    const SizedBox(
                      width: 18.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Alfred Johnson",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        RatingBarIndicator(
                          rating: 3.5,
                          itemCount: 5,
                          itemSize: 30.0,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. "),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 18.0,
          ),
          ElevatedButton(
            style: OutlinedButton.styleFrom(
              minimumSize: Size(width, height * 0.09),
              maximumSize: Size(width, height * 0.09),
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: const BorderSide(width: 1.5),
              ),
            ),
            onPressed: () {
              //NAVIGATE TO THE SHOW MORE REVIEW
            },
            child: const Text(
              "See All Review",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
