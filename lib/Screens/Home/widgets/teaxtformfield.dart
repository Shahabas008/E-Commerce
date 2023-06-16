import 'package:ecommerce/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({Key? key, required searchController}) : super(key: key);
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        cursorColor: Colors.black,
        controller: searchController,
        decoration: InputDecoration(
          hintText: "Search Product Name",
          hintStyle: const TextStyle(
            color: Color(
              0xFFC4C5C4,
            ),
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
          suffixIcon: const Icon(
            Icons.search_outlined,
            color: Colors.black,
            size: 35,
          ),
          filled: true,
          fillColor: grey,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: grey,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: grey,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
