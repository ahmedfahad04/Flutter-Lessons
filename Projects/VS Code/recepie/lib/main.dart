import 'package:flutter/material.dart';

void main() {
  runApp(const Recepie());
}

class Recepie extends StatelessWidget {
  const Recepie({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:
              const Text("Kichen kits", style: TextStyle(color: Color.fromARGB(255, 249, 233, 9), fontFamily: "TImes New Roman", fontWeight: FontWeight.bold)),
          backgroundColor: Colors.green,
          centerTitle: true,
          actions: <Widget> [
            Icon(Icons.search, color: Colors.black),
            Padding(padding: EdgeInsets.all(5)),
          ],
        ),
      ),
    );
  }
}