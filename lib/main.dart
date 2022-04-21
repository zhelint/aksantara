// import 'dart:html';
// import 'dart:ui';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'aksaraResources.dart';
import 'penjelasanAksara.dart';

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
      theme: ThemeData(primarySwatch: Colors.orange, fontFamily: 'Inter'),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                                '${i.briefDesc}',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 102, 102, 102),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                                maxLines: 2,
                                textAlign: TextAlign.center,
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
                      "Apa itu aksara nusantara?",
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
        backgroundColor: const Color(0xFFFFE8C7),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 16, 16),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                      padding: EdgeInsets.only(left: 0),
                    ),
                    Text("Aksara Nusantara",
                        style: TextStyle(
                            fontFamily: 'InterSemiBold', fontSize: 20))
                  ],
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      color: Color.fromARGB(255, 255, 183, 116),
                      child: Image.asset(
                        'assets/images/aksara-aksara.png',
                        width: 300,
                      ),
                    )),
                Container(
                  padding: EdgeInsets.only(left: 16, top: 16),
                  child: Text(
                    deskripsiAksara,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Color.fromARGB(255, 61, 61, 61),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
