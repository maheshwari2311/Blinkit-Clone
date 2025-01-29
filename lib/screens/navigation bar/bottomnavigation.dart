import 'package:blinket_application/screens/cart.dart';
import 'package:blinket_application/screens/category.dart';
import 'package:blinket_application/screens/menuscreen.dart';
import 'package:blinket_application/screens/printinvoice.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NaviBottom extends StatefulWidget {
  const NaviBottom({super.key});

  @override
  State<NaviBottom> createState() => _NaviBottomState();
}

class _NaviBottomState extends State<NaviBottom> {
  int currentindex = 0;
  final PageController _pageController = PageController();

  List<Widget> pages = [
    MenuScreen(),
    CartScreen(),
    CateoryScreen(),
    InvoiceSceen(),
  ];

  List<Color> colors = [
    Color(0xFFEC0505),
    Color(0xFFF7CB45),
    Color(0xFFF7CB45),
    Color(0xFFF7CB45),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            currentindex = index;
          });
        },
        children: pages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: colors[currentindex],
        items: [
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.shopping_bag,
            size: 30,
          ),
          Icon(
            Icons.category_outlined,
            size: 30,
          ),
          Icon(
            Icons.print_rounded,
            size: 30,
          ),
        ],
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInExpo,
          );
        },
      ),
    );
  }
}
