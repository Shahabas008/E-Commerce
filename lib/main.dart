import 'package:ecommerce/Screens/Home/home_page.dart';
import 'package:ecommerce/data/dataprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/Home/homeprovider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DataProvider>(create: (_) => DataProvider()),
        ChangeNotifierProvider<HomeProvider>(create: (_) => HomeProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "DMSans",
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage()
      ),
    );
  }
}

//the figma design
//https://www.figma.com/file/cWgHFDMUiX2mDvE4mtiBZ0/E-Commerce---Mobile-Apps-(Community)?type=design&node-id=16-3670&t=yD57XoiHewst9VLR-0