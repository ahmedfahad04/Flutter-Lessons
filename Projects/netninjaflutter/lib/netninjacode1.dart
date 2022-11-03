import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context). size. width ;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Flutter'),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 100, height: 30),
                child: ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.send), label: Text('Send')),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                child: Text('Bkash'),
                color: Colors.pink,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                color: Colors.red,
                child: Text('Nagad'),
              ),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 100, height: 30),
                child: ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.send), label: Text('Send')),
              ),
            ],
          ),
        ],
      ),

      // body: Padding(
      //   padding: EdgeInsets.symmetric(vertical: 70, horizontal: 70),
      //   child: Text('Hei bro!', style: TextStyle(fontSize: 25.0, fontFamily: 'PTSans')),
      // ),
      // body: Container(
      //   padding: EdgeInsets.symmetric(vertical: 70, horizontal: 70),
      //   margin: EdgeInsets.symmetric(vertical: 150, horizontal: 80),
      //   child: Text('Hei bro!', style: TextStyle(fontSize: 25.0, fontFamily: 'PTSans')),
      //   color: Colors.grey,
      // ),
      // body: Center(
      //     child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     ElevatedButton(
      //       onPressed: () {
      //         print('BUtton Pressed!!');
      //       },
      //       style: ElevatedButton.styleFrom(
      //         primary: Colors.deepPurple,
      //         side: const BorderSide(width: 2.0, color: Colors.purple),
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(19.0),
      //         ),
      //       ),
      //       child: Text('Press!'),
      //     ),
      //     ElevatedButton.icon(
      //       onPressed: () {},
      //       icon: Icon(Icons.mail),
      //       label: Text('Email'),
      //     ),
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.radio_button_checked, size: 20.0),
      //       alignment: Alignment.bottomCenter,
      //       color: Colors.red[900],
      //     ),
      //   ],
      // )

      // child: Icon(Icons.bakery_dining, size: 90, color: Colors.cyan),
      // child: Text(
      //   'My First App',
      //   style: TextStyle(
      //       fontWeight: FontWeight.w800,
      //       fontSize: 20.0,
      //       fontFamily: 'PTSans'),
      // ),
      // child: Image(
      //   image: AssetImage('images/mystry.jpg'),
      //   // image: NetworkImage('https://images.unsplash.com/photo-1667328011998-b7556ca3a5af?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
      //   width: 300,
      //   height: 300,
      // ),
      // child: Image.asset('images/mystry.jpg'),
      // child: Image.network('url')
      // ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Text('+', style: TextStyle(fontSize: 25)),
        backgroundColor: Colors.deepOrange,
        splashColor: Colors.blueAccent,
      ),
    );
  }
}
