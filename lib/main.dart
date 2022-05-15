import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Klick';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Jonas Flutter App'),
        ),
        body: Center(
          // child: const Text('Body'),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                buttonName = 'Klick Jonas';
              });
              // print('Hallo Jonas');
            },
            child: Text(buttonName),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Settings', icon: Icon(Icons.settings))
          ],
        ),
      ),
    );
  }
}
