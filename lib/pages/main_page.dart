import 'package:flutter/material.dart';
import 'package:flutterdesign/pages/homepage.dart';
import 'package:flutterdesign/pages/profilepage.dart';
import 'package:flutterdesign/pages/searchpage.dart';

import 'baritempage.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const BarItemPage(),
    const SearchPage(),
    const ProfilePage()
  ];

  int currentIndex=0;
   void onTap(int index)
   {
     setState(() {
       currentIndex = index;
     });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.cyanAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(title: Text("Home"),icon: Icon(Icons.apps)),
          BottomNavigationBarItem(title: Text("Bar"),icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(title: Text("Search"),icon: Icon(Icons.search)),
          BottomNavigationBarItem(title: Text("Profile"),icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
