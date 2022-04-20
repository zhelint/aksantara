// import 'dart:html';
// import 'dart:ui';

import 'package:aksantara/aksara.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'aksara.dart';
import 'aksaraWidget.dart';

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
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Inter'),
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
    Aksara(
        name: 'Aksara Jawa',
        desc: 'Jawa',
        image: 'assets/images/aksaraSunda.png'),
    Aksara(
        name: 'Aksara Sunda',
        desc: 'Sunda',
        image: 'assets/images/aksaraSunda.png'),
  ];

  Color componentColor = Color.fromARGB(255, 255, 183, 116);
  Color fontColor = Color.fromARGB(255, 61, 61, 61);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Set the background color of Scaffold (the overall screen)
        backgroundColor: const Color(0xFFFFE8C7),

        //Put all of the elements inside the container, so that I can
        //use "decoration" property
        body: SafeArea(
          child: Container(
            //padding: EdgeInsets.only(top: ),
            //Organize the contents in column
            child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(16, 30, 16, 25),
                    child: const Text(
                      "Aksara\nNusantara.",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 48,
                          fontFamily: 'InterBold'),
                      maxLines: 2,
                    ),
                  ),
                ),

                //const Spacer(),

                //   //Add CarouselSlider
                CarouselSlider(
                  options: CarouselOptions(
                    height: 270.0,
                    enlargeCenterPage: true,
                    viewportFraction: 0.70,
                  ),
                  items: aksara.map((i) {
                    // return Builder(
                    //   builder: (BuildContext context) {
                    return Container(
                        width: /*  240, */ MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: componentColor,
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(16),
                              child: Image.asset(
                                '${i.image}',
                                height: 140.0,
                                width: double.infinity,
                              ),
                            ),
                            //Spacer(),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '${i.name}',
                                style: TextStyle(
                                  fontFamily: 'InterSemiBold',
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                  color: fontColor,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '${i.desc}',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 102, 102, 102),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        ));
                    //},
                    //);
                  }).toList(),
                ),

                //Add spacer between the button and the slider
                //const Spacer(),
                const Spacer(
                  flex: 2,
                ),

                Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                    child: Text(
                      "Lebih lanjut",
                      style: TextStyle(
                          fontFamily: 'InterBold',
                          fontSize: 20,
                          color: fontColor),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(componentColor)),
                  ),
                )
              ],
            ),
            decoration: const BoxDecoration(),
          ),
        ));
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      children: [
        Text("You are in a detail page!"),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
      ],
    )));
  }
}
