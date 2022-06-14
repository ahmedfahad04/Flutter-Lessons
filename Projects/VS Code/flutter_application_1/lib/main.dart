import 'package:flutter/material.dart';

void main() {
  var app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
          centerTitle: true,
          leading: const Icon(Icons.call),
          backgroundColor: Color.fromARGB(255, 189, 36, 89),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(30),
              right: Radius.circular(30),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
              hoverColor: Colors.blue,
              splashRadius: 20,
              
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.alarm))
          ],
        ),
        body: const Center(
          child: Text("Hello World",
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Times New Roman",
                  backgroundColor: Color.fromARGB(255, 243, 184, 33),
                  color: Colors.red)),
        ),
      ),
    );
  }
}
