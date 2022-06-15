import 'package:flutter/material.dart';

class ModifiedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        leading: const IconButton(icon: Icon(Icons.menu), tooltip: "Navigation Menu", onPressed: null,),
        title: const Text("Test your Knowledge!", style: TextStyle(fontSize: 25, fontStyle: FontStyle.normal),),
        actions: const <Widget>[ IconButton(onPressed: null, icon: Icon(Icons.search), tooltip: "Search",),],
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: const [
          Text("Answer a few questions and know your level...", textAlign: TextAlign.center, style: TextStyle(fontSize: 25),),
          ElevatedButton(
            onPressed: null,
            child: Text("You have chosen Answer 1", style: TextStyle(fontSize: 20, color: Colors.blueGrey),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text("You have chosen Answer 2", style: TextStyle(fontSize: 20, color: Colors.blueGrey),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text("You have chosen Answer 3", style: TextStyle(fontSize: 20, color: Colors.blueGrey),
            ),
          ),
        ],
      ),

      floatingActionButton: const FloatingActionButton(
        tooltip: "Add",
        onPressed: null,
        child: Icon(Icons.add),
      ),
    ),
    );
  }
}