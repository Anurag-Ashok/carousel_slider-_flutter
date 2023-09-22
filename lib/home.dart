import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        child: CarouselSlider(
            items: [1, 2, 3, 4, 5].map((i) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                    child: Text(
                  'Slider $i',
                  style: TextStyle(fontSize: 20),
                )),
              );
            }).toList(),
            options: CarouselOptions(height: 300)),
      ),
    );
  }
}
