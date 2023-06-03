import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top:Radius.circular(15)),
              ),
              builder: (context) => SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Get a meeting link to share'),
                      leading: Icon(Icons.link),
                      onLongPress: () {},
                    ),
                    ListTile(
                      title: Text('Start an instant meeting'),
                      leading: Icon(Icons.videocam_outlined),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text('Schedule in Google Calendar'),
                      leading: Icon(Icons.calendar_today),
                      onTap: () {},
                    ),ListTile(
                      title: Text('Close'),
                      leading: Icon(Icons.close),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
          child: const Text("New Meeting"),
        ),
      ),
    );
  }

}
