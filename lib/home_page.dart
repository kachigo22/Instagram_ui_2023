// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_instagram_ul/pages/account.dart';
import 'package:flutter_instagram_ul/pages/home.dart';
import 'package:flutter_instagram_ul/pages/reels.dart';
import 'package:flutter_instagram_ul/pages/search.dart';
import 'package:flutter_instagram_ul/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ///navigation around the botton nav///
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
     _selectedIndex = index;
    });
  }

  ///differentpages,,
  final List<Widget> _children = [
Home(),
Search(),
Reels(),
Shop(),
Account(),



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'reels',
            icon: Icon(Icons.videocam_off),
          ),
          BottomNavigationBarItem(
            label: 'shop',
            icon: Icon(Icons.shop),
          ),
          BottomNavigationBarItem(
            label: 'account',
            icon: Icon(Icons.account_balance),
          ),
        ],
      ),
    );
  }
}
