import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/recepie.jpeg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            // TODO 5: add dark Overlay Box decoration
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),

            // TODO 6: Add Container, Column, Icon and Text
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(Icons.book, color: Colors.white, size: 40,),
                  SizedBox(height: 8),
                  Text('Recipe Trends', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold), ),
                  SizedBox(height: 15),
                ],
              )
            ),

            // TODO 7: Add Center Widget with chip widget
            Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 22,
                children: [
                  Chip(
                    label: Text('Healthy', style: TextStyle(fontSize: 15),),
                    backgroundColor: Colors.white.withOpacity(0.7),
                    onDeleted: () {
                      print('Delete (Healthy)');
                    },
                  ),
                  Chip(
                    label: Text('Vegan', style: TextStyle(fontSize: 15),),
                    backgroundColor: Colors.white.withOpacity(0.7),
                    onDeleted: () {
                      print('Delete (Vegan)');
                    },
                  ),
                  Chip(
                    label: Text('Carrot', style: TextStyle(fontSize: 15),),
                    backgroundColor: Colors.white.withOpacity(0.7),
                    onDeleted: () {
                      print('Delete (Carrot)');
                    },
                  ),
                  Chip(
                    label: Text('Greens', style: TextStyle(fontSize: 15),),
                    backgroundColor: Colors.white.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Wheet', style: TextStyle(fontSize: 15),),
                    backgroundColor: Colors.white.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Lemongrass', style: TextStyle(fontSize: 15),),
                    backgroundColor: Colors.white.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Mint', style: TextStyle(fontSize: 15),),
                    backgroundColor: Colors.white.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Orange', style: TextStyle(fontSize: 15),),
                    backgroundColor: Colors.white.withOpacity(0.7),
                  ),
                ],
              )
            ),
          ],
        )
      ),
    );
  }
}
