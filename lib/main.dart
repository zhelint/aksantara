// import 'dart:html';
// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8C7),
      body: Container(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 30, 16, 25),
              child: Text(
                "Apa Gitu",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
                maxLines: 2,
              ),
            ),

            //Add CarouselSlider
          ],
        ),
        decoration: const BoxDecoration(),
      ),
    );
  }
}
