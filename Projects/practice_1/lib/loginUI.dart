import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp())); // this material App is a must to switch between pages
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              constraints: const BoxConstraints.expand(width: 370, height: 320),
              decoration: const BoxDecoration(
                color: Color(0xFFF5F4EB),
              ),
              child: Stack(
                children: const [
                  Positioned(
                    bottom: 20,
                    right: 125,
                    child: Text(
                      'lpy.',
                      style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 110,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(width: 3.0, color: Colors.red),
              primary: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0)),
              minimumSize: const Size(250, 50), //////// HERE
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DashBoard()),
              );
            },
            child: const Text(
              'Sign In',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ), // Sign In
          const SizedBox(
            height: 30,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(width: 3.0, color: Colors.red),
              primary: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0)),
              minimumSize: const Size(250, 50), //////// HERE
            ),
            onPressed: () {},
            child: const Text(
              'Create Account',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ), // Create Account
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0xFFF5F4EB),
                  side: const BorderSide(width: 0.0, color: Colors.white),
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0)),
                  minimumSize: const Size(20, 40), //////// HERE
                ),
                onPressed: () {},
                child: const Text(
                  'fb',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0xFFF5F4EB),
                  side: const BorderSide(width: 0.0, color: Colors.white),
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0)),
                  minimumSize: const Size(20, 40), //////// HERE
                ),
                onPressed: () {},
                child: const Text(
                  'in',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0xFFF5F4EB),
                  side: const BorderSide(width: 0.0, color: Colors.white),
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0)),
                  minimumSize: const Size(20, 40), //////// HERE
                ),
                onPressed: () {},
                child: const Text(
                  'g+',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0xFFF5F4EB),
                  side: const BorderSide(width: 0.0, color: Colors.white),
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0)),
                  minimumSize: const Size(20, 40), //////// HERE
                ),
                onPressed: () {},
                child: const Text(
                  'tw',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ],
          ), // Social Media Icons
          TextButton(
            onPressed: () {},
            child: Text(
              'sign in with another account?',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
