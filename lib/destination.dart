import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/SlidePage.dart';
import 'package:untitled/genre_slider.dart';

class View extends StatelessWidget {
  const View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      Scaffold(

      body: Column(

        children: [
          SliderDestination(),
          GenreSlider(),
          blockimage()
        ],
      ),
    );
  }
  blockimage(){
    return Image.asset('assets/images/1323550.jpg');
  }
}