import 'package:flutter_1/myscaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/modified_appbar.dart';

void main(){
  // runApp(MyApp());
  runApp(ModifiedAppBar());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: MyScaffold(),
    );
  }
}