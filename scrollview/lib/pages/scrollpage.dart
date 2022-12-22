import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scroll View Page"),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            height: 200.0,
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(15.0),
                  height: 150.0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35.0, vertical: 20.0),
                  color: Colors.amber,
                  child: const Text(
                    'Text One',
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  height: 150.0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35.0, vertical: 20.0),
                  color: Colors.purple,
                  child: const Text(
                    'Text Two',
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  height: 150.0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35.0, vertical: 20.0),
                  color: Colors.amberAccent,
                  child: const Text(
                    'Text Three',
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  height: 150.0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35.0, vertical: 20.0),
                  color: Colors.blueGrey,
                  child: const Text(
                    'Text Four',
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.teal,
            height: 170.0,
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            child: ListView(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(15.0),
                  height: 150.0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35.0, vertical: 20.0),
                  color: Colors.amber,
                  child: const Text(
                    'Text One',
                    style: TextStyle(fontSize: 23.0),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  height: 150.0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35.0, vertical: 20.0),
                  color: Colors.purple,
                  child: const Text(
                    'Text Two',
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  height: 150.0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35.0, vertical: 20.0),
                  color: Colors.amberAccent,
                  child: const Text(
                    'Text Three',
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  height: 150.0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35.0, vertical: 20.0),
                  color: Colors.blueGrey,
                  child: const Text(
                    'Text Four',
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
