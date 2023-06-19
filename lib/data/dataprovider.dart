import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'model.dart';
import 'package:http/http.dart' as http;

class DataProvider extends ChangeNotifier {
  ECommerceData? eCommerceDataModel;

  Future<void> fetchData() async {
    const url = "https://dummyjson.com/products";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      eCommerceDataModel = eCommerceDataFromJson(response.body);
      notifyListeners();
    } else {
      throw Exception("Error Occurred At The DataProvider class.");
    }
  }
}
