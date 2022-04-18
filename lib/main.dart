// import 'dart:html';
// import 'dart:ui';

import 'package:aksantara/aksara.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'aksara.dart';

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
  //Add an "Aksara" objects, that will be used in Carousel
  List<Aksara> aksara = [
    Aksara(name: 'Aksara Jawa', desc: 'Jawa', image: 'assets/images'),
    Aksara(name: 'Aksara Sunda', desc: 'Sunda', image: 'assets/images'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Set the background color of Scaffold (the overall screen)
      backgroundColor: const Color(0xFFFFE8C7),

      //Put all of the elements inside the container, so that I can
      //use "decoration" property
      body: Container(
        //Organize the contents in column
        child: Column(
          children: const [
            //Use the Padding() class to wrap the title
            Padding(
              padding: EdgeInsets.fromLTRB(16, 30, 16, 25),
              child: Text(
                "Aksara\nNusantara",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
                maxLines: 2,
              ),
            ),

            //   //Add CarouselSlider
            //   CarouselSlider(items: aksara,
          ],
        ),
        decoration: const BoxDecoration(),
      ),
    );
  }
}
