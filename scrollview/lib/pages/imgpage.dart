import 'package:flutter/material.dart';

class ImgPages extends StatefulWidget {
  const ImgPages({super.key});

  @override
  State<ImgPages> createState() => _ImgPagesState();
}

class _ImgPagesState extends State<ImgPages> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Image file",
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 0.0),
          child: Scrollbar(
            child: Column(
              verticalDirection: VerticalDirection.down,
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.blueGrey,
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 10.0),
                  child: const Text(
                    "Image View Page",
                    style: TextStyle(fontSize: 24.0, color: Colors.white),
                  ),
                ),
                RawImage()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
