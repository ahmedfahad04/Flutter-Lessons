import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar(this.title); // cosntructor

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.0,
      decoration: BoxDecoration(color: Colors.pinkAccent),
      child: Row(
        children: <Widget>[
          IconButton(onPressed: null, icon: Icon(Icons.menu)),
          Expanded(child: title),
          IconButton(onPressed: null, icon: Icon(Icons.search)),
        ],
      ),
    );
  }
}