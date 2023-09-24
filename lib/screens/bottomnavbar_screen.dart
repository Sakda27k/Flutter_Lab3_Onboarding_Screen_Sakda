import 'package:flutter/material.dart';
import 'package:widgets_basic/page/pages.dart';
import 'package:widgets_basic/page/reels.dart';
import 'package:widgets_basic/page/shop.dart';
import 'package:widgets_basic/page/home.dart';
import 'package:widgets_basic/page/search.dart';


class BottomNavVar extends StatefulWidget {
  const BottomNavVar({Key? key}) : super(key: key);

  @override
  State<BottomNavVar> createState() => _BottomNavVarState();
}

class _BottomNavVarState extends State<BottomNavVar> {
  int selectedIndex = 0;

  void _navigatorBottomNavBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    const HomePage(),
    const SearchPage(),
    ReelsPage(),
    ShopPage(),
    ProfilePage(),
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[selectedIndex],
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _navigatorBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'Reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      )
    );
    
  }
}