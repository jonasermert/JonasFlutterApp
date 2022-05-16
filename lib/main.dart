import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Klick';
  int currentIndex = 0;

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
          child: SizedBox(
            width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             ElevatedButton(
            onPressed: () {
              setState(() {
                buttonName = 'Klick Jonas';
              });
              // print('Hallo Jonas');
            },
            child: Text(buttonName),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                buttonName = 'Klick Jonas';
              });
          ),
        ],
        ),
        ),
        ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Settings', icon: Icon(Icons.settings))
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
    ),
  }
}
