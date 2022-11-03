import 'package:flutter/material.dart';
import 'authorcard.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            image: AssetImage('images/mshake.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          children: <Widget>[
            const AuthorCard(authorName: 'Istiaq Ahmed Fahad', title: 'Smoothie Connoisseur', imageProvider: AssetImage('images/manager.jpeg')),
            Expanded(
              child: Stack(
                children: const [
                  Positioned(
                    bottom: 16,
                    right:16,
                    child: Text('Recipe', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white)),
                  ),
                  Positioned(
                    bottom: 70,
                    left:16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
