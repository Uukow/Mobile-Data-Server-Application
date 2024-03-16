import 'package:flutter/material.dart';
import 'package:uukow/components/bottomNavBar.dart';
import 'package:uukow/const.dart';
import 'package:uukow/pages/aboutPage.dart';
import 'package:uukow/pages/callPage.dart';
import 'package:uukow/pages/developerPage.dart';
import 'package:uukow/pages/home.dart';
import 'package:uukow/pages/introPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Home(),
    AboutPage(),
    DeveloperPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
