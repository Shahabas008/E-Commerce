import 'package:ecommerce/Screens/Cart/cartpage.dart';
import 'package:ecommerce/Screens/WishList/wishlist_page.dart';
import 'package:ecommerce/data/dataprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/widgets/bottomnavigationbar.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DataProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavigationBarPage(),
      ),
    );
  }
}
