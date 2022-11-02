import 'package:flutter/material.dart';
import 'package:flutter_1/appbar.dart';

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            Text("Test your Knowledge!",
                style: Theme.of(context).primaryTextTheme.headline6),
          ),
          Expanded(
            child: Center(
              child: Text("Here we'll place our body widget...",
                  style: TextStyle(fontSize: 25)),
            ),
          ),
        ],
      ),
    );
  }
}
