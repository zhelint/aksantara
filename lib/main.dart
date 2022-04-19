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
        image: 'assets/images/Screenshot 2022-04-19 061103.png'),
    Aksara(
        name: 'Aksara Sunda',
        desc: 'Sunda',
        image: 'assets/images/Screenshot 2022-04-19 061103.png'),
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
          children: [
            //Use the Padding() class to wrap the title
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 30, 16, 25),
              child: Text(
                "Aksara\nNusantara",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 60),
                maxLines: 2,
              ),
            ),

            //   //Add CarouselSlider
            CarouselSlider(
              options: CarouselOptions(height: 200.0),
              items: aksara.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Column(
                          children: [
                            Image.asset(
                              '${i.image}',
                              height: 100.0,
                            ),
                            Text(
                              '${i.name}',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w800,
                              ),
                              maxLines: 2,
                            ),
                            Text('${i.desc}')
                          ],
                        ));
                  },
                );
              }).toList(),
            ),
            Container(
              width: double.infinity,
              height: 80,
              margin: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Lebih lanjut"),
                //style: ButtonStyle(backgroundColor: ColorProperty(Colors.amber, value)),
              ),
            )
          ],
        ),
        decoration: const BoxDecoration(),
      ),
    );
  }
}
