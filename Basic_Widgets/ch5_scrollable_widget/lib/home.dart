import 'package:flutter/material.dart';
import '../components/card1.dart';
import '../components/card2.dart';
import '../components/card3.dart';
import '../screens/explore_screen.dart';

// this is a stateful widget as we need to track the mouse click of bottom
// navigation bar icon and thereby change the windows
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    ExploreScreen(),
    Container(color: Colors.blue[800]),
    Container(color: Colors.yellow),
    // Container(color: Colors.black),
  ];

  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
      print("$_selectedIndex th Icon Pressed");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        title: const Text('Fooderlich!'),
        centerTitle: true,
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.pink[800],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore, color: Colors.white,),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, color: Colors.white),
            label: 'Recipes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list, color: Colors.white),
            label: 'To buy',
          ),
        ],
      ),
    );
  }
}