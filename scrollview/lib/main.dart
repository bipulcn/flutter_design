import 'package:flutter/material.dart';
import 'package:scrollview/pages/imgpage.dart';
import 'package:scrollview/pages/scrollpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HomePage")),
      body: Container(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          padding: EdgeInsets.zero,
          child: const Text(
            "Sample Page",
            style: TextStyle(fontSize: 25.0),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: const Icon(Icons.window_sharp),
              title: const Text('Scroll View'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScrollPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text('Image View'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ImgPages()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.close),
              title: const Text('Exit'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

/*
Container(
            padding: EdgeInsets.zero,
            child: Row(children: [
              Container(
                width: 30.0,
                height: 30.0,
                color: Colors.amber,
                child: const Text("hi"),
              ),
              const Text(
                "Sample Page",
                style: TextStyle(fontSize: 25.0),
              ),
            ])),
*/