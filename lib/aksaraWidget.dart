import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'aksara.dart';

class aksaraWidget extends StatelessWidget {
  //Add an "Aksara" objects, that will be used in Carousel
  List<Aksara> aksara = [
    Aksara(name: 'Aksara Jawa', desc: 'Jawa', image: 'assets/images'),
    Aksara(name: 'Aksara Sunda', desc: 'Sunda', image: 'assets/images'),
  ];

  Aksara akasara = Aksara(name: 'pagitu', desc: 'pagitu', image: 'pagitu');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var image;
    return Scaffold(
      body: Container(
        child: Column(
          children: [Image.asset('${akasara.image}')],
        ),
      ),
    );
    //throw UnimplementedError();
  }
}
