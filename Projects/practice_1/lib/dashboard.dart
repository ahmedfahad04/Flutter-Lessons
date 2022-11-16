import 'package:flutter/material.dart';
import 'loginUI.dart';

// void main() => runApp(DashBoard());
//
class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF8F9F4),
          title: Text('lpy.',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.red,
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.list_sharp),
              color: Colors.black,
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              children: [
                Expanded(
                  child: IconButton(
                    icon: Text(
                      'Dashboard',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Text(
                      'Timeline',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.red[200]),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 1,
              color: Colors.grey[300],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 40.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/smile.png'),
                    radius: 60,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello Everyone,', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),),
                  Text('Here\'s an Update', style: TextStyle(color: Colors.grey, fontSize: 20),),
                ],
              ),

            ),
            Divider(
              height: 15,
              thickness: 1,
              color: Colors.grey[300],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/smile.png'),
                        radius: 30,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Jessika Banke Sent you a Message', style: TextStyle(fontSize: 15, color: Colors.grey[500]),),
                        Text('6 hours ago', style: TextStyle(fontSize: 12, color: Colors.grey[500])),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 1,
              color: Colors.grey[300],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/inbox.png'),
                        radius: 30,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Melissa Panson sent you a message', style: TextStyle(fontSize: 15, color: Colors.grey[500]),),
                        Text('6 hours ago', style: TextStyle(fontSize: 12, color: Colors.grey[500])),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 1,
              color: Colors.grey[300],
            ),
            Center(
              heightFactor: 3,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: Colors.red,
                  side: BorderSide(width: 3, color: Colors.red),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19.0),
                  ),
                  minimumSize: Size(180, 45),
                ),
                  onPressed: () {},
                  child: Text('Make a Post', style: TextStyle(color: Colors.red, fontSize: 12, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Color(0xFFF8F9F4),
              icon: Container(
                width: 25,
                height: 25,
                child: Image.asset(
                  'assets/message.png',
                  color: Colors.red,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 30,
                height: 30,
                child: Image.asset(
                  'assets/people.png',
                  color: Colors.red,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 25,
                height: 25,
                child: Image.asset(
                  'assets/ihome.png',
                  color: Colors.red,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 30,
                height: 30,
                child: Image.asset(
                  'assets/files.png',
                  color: Colors.red,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 25,
                height: 25,
                child: Image.asset(
                  'assets/speople.png',
                  color: Colors.red,
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
