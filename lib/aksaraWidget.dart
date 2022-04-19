import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'aksara.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AksaraWidget extends StatelessWidget {
  //Add an "Aksara" objects, that will be used in Carousel
  List<Aksara> aksara = [
    Aksara(name: 'Aksara Jawa', desc: 'Jawa', image: 'assets/images'),
    Aksara(name: 'Aksara Sunda', desc: 'Sunda', image: 'assets/images'),
  ];

  Aksara akasara = Aksara(name: 'pagitu', desc: 'pagitu', image: 'pagitu');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: CarouselSlider(
      options: CarouselOptions(height: 400.0),
      items: aksara.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(color: Colors.amber),
              child: Text(
                'Text $aksara.name',
                style: TextStyle(fontSize: 16.0),
              ),
            );
          },
        );
      }).toList(),
    ));
    //throw UnimplementedError();
  }
}
