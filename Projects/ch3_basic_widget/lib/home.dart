import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

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
    const Card1(),
    const Card2(),
    const Card3(),
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
            icon: Icon(Icons.add_circle_sharp, color: Colors.white,),
            label: 'Add Item',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_sharp, color: Colors.white),
            label: 'Purchase',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard, color: Colors.white),
            label: 'Order Item',
          ),
        ],
      ),
    );
  }
}