// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
        ),
      ),
      home: const RandomEnglishWord(),
    );
  }
}

class _RandomEnglishWordState extends State<RandomEnglishWord> {
  final _suggestions = <WordPair>[];
  final _save = <WordPair>{}; //part 2
  final _biggerFont = const TextStyle(fontSize: 15);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: const Text('Startup Name Generator...'), actions: [
          IconButton(
            onPressed: _pushSaved,
            icon: const Icon(Icons.list),
            tooltip: 'Saved Suggestion',
          )
        ]),
        body: ListView.builder(
          // padding: const EdgeInsets.all(10.0),
          itemBuilder: (context, i) {
            if (i.isOdd) return const Divider();
            final index = i ~/ 2;
            print("INDEX IS $i");
            if (index >= _suggestions.length) {
              _suggestions.addAll(generateWordPairs().take(10));
            }
            final alreadySaved = _save.contains(_suggestions[index]); // part 2

            return ListTile(
              tileColor: Colors.greenAccent,
              textColor: Colors.black87,
              // iconColor: Colors.lightBlue,
              leading: const Icon(
                Icons.ad_units,
                color: Colors.blueAccent,
              ),
              title: Text(
                _suggestions[index].asPascalCase,
                style: _biggerFont,
              ),
              trailing: Icon(
                alreadySaved ? Icons.favorite : Icons.favorite_border,
                color: alreadySaved ? Colors.red : Colors.black87,
                semanticLabel: alreadySaved ? 'Remove From Saved' : 'Save',
              ),
              onTap: () {
                setState(() {
                  if (alreadySaved) {
                    _save.remove(_suggestions[index]);
                  } else {
                    _save.add(_suggestions[index]);
                  }
                });
              },
            );
          },
        ));
  }

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) {

          final tiles = _save.map(
            (tile) {
              return ListTile(
                title: Text(tile.asPascalCase, style: _biggerFont),
              );
            },
          );

          final divided = tiles.isNotEmpty
              ? ListTile.divideTiles(
                  tiles: tiles,
                  context: context,
                ).toList()
              : <Widget>[
              const Center(
                  child: Text('No Item has been added.'))
              ];

          return Scaffold(
            appBar: AppBar(
              title: const Text('Saved Suggestions'),
            ),
            body: ListView(children: divided),
          );

        },
      ),
    );
  }
}

class RandomEnglishWord extends StatefulWidget {
  const RandomEnglishWord({super.key});

  @override
  State<RandomEnglishWord> createState() => _RandomEnglishWordState();
}
