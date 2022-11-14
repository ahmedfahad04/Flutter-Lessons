import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final String categroy = 'Editor\'s Choice';
  final String title = 'The Art of Curry';
  final String description = 'Learn to make the perfect sushi';
  final String chef = 'Ray Wenderlich';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(18),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          color: Color(0x556776FF),
          image: DecorationImage(
            image: AssetImage('images/sushi.jpeg'),
            fit: BoxFit.contain,
          ),
          borderRadius: BorderRadius.all(Radius.circular((10.0))),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: Text(categroy,
                  style: const TextStyle(
                      fontSize: 25,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold)),
            ),
            Positioned(
              top: 30,
              right: 0,
              child: Text(
                title,
                style: TextStyle(fontSize: 20, color: Colors.red[400]),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 0,
              child: Text(
                description,
                style: TextStyle(fontSize: 22, color: Colors.red),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Text(
                chef,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.green.shade400,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
