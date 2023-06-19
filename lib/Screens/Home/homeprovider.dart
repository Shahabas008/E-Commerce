import 'dart:developer';

import 'package:ecommerce/data/dataprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class HomeProvider extends ChangeNotifier {
  String allThumbNailList = "";
  void allThumbNail({required BuildContext context}) {
    final dataProvider = Provider.of<DataProvider>(context, listen: false);
    for (int i = 1; i < dataProvider.eCommerceDataModel!.limit; i++) {

    }
  }
}
