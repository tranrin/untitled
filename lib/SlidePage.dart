import 'package:flutter/material.dart';
class SliderDestination extends StatelessWidget{
  SliderDestination({Key?key}): super(key:key);
  List<String> _list=[
    // link image
    "assets/images/1556323.jpg",
    "assets/images/1556323.jpg",
    "assets/images/1556323.jpg",
    "assets/images/1556323.jpg",
    "assets/images/1556323.jpg"



  ];



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      width: double.infinity,//MediaQuery.of(context).size.height/3,
      height: 300,//MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
           ..._list.map((e){
              return Container(
                margin: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image:AssetImage(e),
                    fit: BoxFit.cover
                  )
                ),


              );

            })
          ],
        ),

      ),
    );
  }}
