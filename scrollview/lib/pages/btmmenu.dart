import 'package:flutter/material.dart';

class BtmMenuBar extends StatefulWidget {
  const BtmMenuBar({super.key});

  @override
  State<BtmMenuBar> createState() => _BtmMenuBarState();
}

class _BtmMenuBarState extends State<BtmMenuBar> {
  int _selIndex = 0;
  static const TextStyle cstyle =
      TextStyle(fontSize: 32.0, color: Colors.white);
  static List<Widget> _widgetOption = <Widget>[
    Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blueAccent,
        padding: EdgeInsets.all(10.0),
        child: Text("Broken Heart", style: cstyle)),
    Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.tealAccent,
        padding: EdgeInsets.all(10.0),
        child: Text("My Favourite", style: cstyle)),
    Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        padding: EdgeInsets.all(10.0),
        child: Text("Lets go", style: cstyle)),
  ];
  void _onItemTaped(int index) {
    setState(() {
      _selIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Botom Menu Example Layout"),
      ),
      body: Container(
          padding: EdgeInsets.zero,
          child: Center(child: _widgetOption[_selIndex])),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken), label: "Heart"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Star"),
          BottomNavigationBarItem(icon: Icon(Icons.exit_to_app), label: "Exit"),
        ],
        selectedItemColor: Colors.blue,
        currentIndex: _selIndex,
        onTap: _onItemTaped,
      ),
    );
  }
}
