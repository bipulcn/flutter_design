import 'package:flutter/material.dart';

class ImgPages extends StatefulWidget {
  const ImgPages({super.key});

  @override
  State<ImgPages> createState() => _ImgPagesState();
}

class _ImgPagesState extends State<ImgPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image View")),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 0.0),
        child: Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
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
              Container(
                width: double.infinity,
                height: 300.0,
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/imgs/img01.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                    width: double.infinity,
                    height: 60.0,
                    color: Colors.white60,
                    child: const Center(
                        child: Text(
                      "Hellow world",
                      style: TextStyle(fontSize: 22.0),
                    ))) /* add child content here */,
              ),
              Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 70.0),
                  child: const ClipOval(
                      child: Image(
                    image: AssetImage('assets/imgs/img01.jpg'),
                  ))),
              Container(
                  padding: EdgeInsets.zero,
                  width: double.infinity,
                  height: 300.0,
                  child:
                      const Image(image: AssetImage("assets/imgs/img02.jpg"))),
              Container(
                width: double.infinity,
                height: 200.0,
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/imgs/img03.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: null /* add child content here */,
              ),
              const Image(image: AssetImage("assets/imgs/img04.jpg")),
              const Image(image: AssetImage("assets/imgs/img05.jpg")),
              const Image(image: AssetImage("assets/imgs/img06.jpg")),
              const Image(image: AssetImage("assets/imgs/img07.jpg")),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClip extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, 100, 100);
  }

  bool shouldReclip(oldClipper) {
    return false;
  }
}
