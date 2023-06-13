import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'model.dart';
import 'package:http/http.dart' as http;
class DataProvider extends ChangeNotifier{
  List<ECommerceData> eCommerceDataList = [];
  Future<void> fetchData() async{
    const url = "https://fakestoreapi.com/products";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      eCommerceDataList =  eCommerceDataFromJson(response.body);
    } else {
      throw Exception("Error Occurred At The DataProvider class.");
    }
  }
}