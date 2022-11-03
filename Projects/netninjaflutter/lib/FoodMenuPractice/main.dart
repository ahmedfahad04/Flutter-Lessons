import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.pink[800],
        )
      ),
      title: 'Fooderlich',
      home: const Home(),
    );
  }
}
