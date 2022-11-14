import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                constraints: BoxConstraints.expand(width: 370, height: 320),
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      child: Text('lpy.', style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold, color: Colors.red),),
                      bottom: 20,
                      right: 125,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 110,),
            OutlinedButton(
                onPressed: () {},
                child: Text('Sign Up', style: TextStyle(fontSize: 15),),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Sign In', style: TextStyle(fontSize: 15),),
            ),
          ],

        ),

      ),
    );
  }
}
