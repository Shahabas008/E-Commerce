import 'package:ecommerce/Screens/WishList/wishlist_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/colors/colors.dart';
import '../Cart/cartpage.dart';
import '../Home/home_page.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _selectedIndex = 0;
  List pages = [
    const HomePage(),
    const CartPage(),
    const WishListPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      // extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 8.0,
        selectedLabelStyle: TextStyle(color: primary),
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        selectedItemColor: primary,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.shopping_cart),
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'CART',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.favorite),
            icon: Icon(Icons.favorite_outline_outlined),
            label: 'WISHLIST',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int val) {
          setState(() {
            _selectedIndex = val;
          });
        },
      ),
    );
  }
}
