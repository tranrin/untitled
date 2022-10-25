import 'dart:html';

import 'package:flutter/material.dart';
class  foodslide extends StatelessWidget {
  foodslide({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
//


//
    return Scaffold(
      body: SingleChildScrollView(

        padding: const EdgeInsets.all(20.0),
        child: SafeArea(

          child: Column(



            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildSearchBar(context),
              SizedBox(height: 20,),
              buildWelcome(context),
              SizedBox(height: 20,),
              buildh3(context),
              SizedBox(height: 20),
              buildBestSaler(context),
              SizedBox(height: 20),
              buildBar(context),
              //   buildListView(context)

              buildList1(context)


              // SizedBox(height: 40,),
              //buildSavePlace(context),
              //SizedBox(height: 10,),
              //buildGrid(context)

            ],
          ),
        ),
      ),


    );
  }

  buildSearchBar(BuildContext context) {
    return (
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.arrow_back, size: 24.0),
            SizedBox(width: 480),
            Icon(Icons.search, size: 24.0),

          ],
        )
    );
  }

  buildWelcome(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Today's Special", style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold
        ),


        ), SizedBox(width: 80),
        Container(
          padding: EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
          child:

          Row(

            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
              Text("Cart")
            ],

          ),
          decoration: BoxDecoration(
            color: hexToColor('#57d369'),
            borderRadius: BorderRadius.circular(10),


          ),
        )


      ],

    );
  }

  Color hexToColor(String hexString, {String alphaChannel = 'FF'}) {
    return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
  }


  buildBestSaler(BuildContext context) {
    List<String> list = [
      "assets/images/Picture1.png",
      "assets/images/Picture2.png",
      "assets/images/Picture3.png",
      "assets/images/Picture4.png",
      "assets/images/Picture5.png",
      "assets/images/Picture6.png",
      "assets/images/Picture7.png",
      "assets/images/Picture8.png",

    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Column(
          children: [
            Container(

              padding: EdgeInsets.all(50.0),
              width: 300,
              height:420,
              alignment: Alignment.bottomCenter,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:hexToColor("#84e1fc"),
                boxShadow: [
                  BoxShadow(
                    color: hexToColor("#c6e8f7"),

                    offset: Offset(0,10), // Shadow position
                  ),
                ],
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Image.asset(list[0],
                    width: 200,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 5,),
                  //SizedBox(height: 50),
                  Title(color: Colors.black, child: Text("Yoshimasa Shushi")),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Icon(Icons.star,size: 15,),
                      Icon(Icons.star,size: 15,),
                      Icon(Icons.star,size: 15,),
                      Icon(Icons.star,size: 15,),
                      Icon(Icons.star,size: 15,),
                      Text("250 Rating")
                    ],
                  ),


    Container(
      width: 180,
      child: Text("Lorem ipsum is a dummy text used for printing"),

    )
    ,



                ],
              ),


            )
          ],
        ),
        SizedBox(width: 20,),
        Column(


          children: [
            Container(

              padding: EdgeInsets.only(top: 20),


              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: hexToColor("#61e27b"),
                boxShadow: [
                  BoxShadow(
                    color: hexToColor("#8df2be"),

                    offset: Offset(0,10), // Shadow position
                  ),
                ],
              ),
              child: Column(

                children: [
                  Container(
                    width: 150,

                    child: Column(

                      children: [
                        Image.asset(list[7],
                            width: 120,
                            height: 120,
                            fit:BoxFit.fill
                        ),
                        SizedBox(height: 5,),

                        Title(color: Colors.black, child: Text("Yoshimasa Shushi")),
                        SizedBox(height: 5,),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child:
                          Row(





                            children: [
                              Icon(Icons.star,size: 15,),
                              Icon(Icons.star,size: 15,),
                              Icon(Icons.star,size: 15,),
                              Icon(Icons.star,size: 15,),
                              Icon(Icons.star,size: 15,),],










                          )
                          ,
                        )
                        ,








                      ],
                    )
                    ,
                  )

                ],
              ),
            ),SizedBox(height: 20,),
            Container(
            padding:EdgeInsets.only(top: 10),
            width: 200  ,
            height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: hexToColor("#61e27b"),
                boxShadow: [
                  BoxShadow(
                    color: hexToColor("#8df2be"),
                    offset: Offset(0,10), // Shadow position
                  ),
                ],
              ),

              child: Container(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,



                children: [
                  Image.asset(list[6],
             width: 120,
             height: 120,
             fit:BoxFit.fill
                  )
    ,                 SizedBox(height: 5,),
                  Title(color: Colors.black, child: Text("Yoshimasa \n Shushi")),
                  SizedBox(height: 5,),
                  Container(

                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star,size: 15,),
                        Icon(Icons.star,size: 15,),
                        Icon(Icons.star,size: 15,),
                        Icon(Icons.star,size: 15,),
                        Icon(Icons.star,size: 15,),

                      ],
                    )
                    ,
                  )


                ],
              ),),
            )
          ],
        )
      ],
    );
  }

/////




  ////


  buildBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [

        Text("Places", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50)),

    Container(

      margin: const EdgeInsets.only(left: 30.0,top:40),
      color: Colors.black45, height: 1, width: 345),]
    );
  }


  buildList1(BuildContext context) {
    List<String> entries = <String>[
      "assets/images/Picture4.png",
      "assets/images/Picture3.png",
      "assets/images/Picture2.png",


    ];

    return Container(

      child: ListView(

        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [

          ...entries.map((e) {
            return Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [


              Container(

                height:50,

                margin:EdgeInsets.only(left: 45,top: 50,bottom: 50,right: 45),
                child:Image(image: AssetImage(e)),

                //decoration: BoxDecoration(
                 // image: DecorationImage(
                //      image: AssetImage(e)
               //   ),
               // ),
              ),






//////////////////
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sushi Den",style: TextStyle(fontWeight: FontWeight.bold),),
                      Row(
                          children: [
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),]

                      ),
                      Text("Lorem ipsum sits dolar amet is for publishing"),

                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
                        child:

                        Row(

                          children: [
                          TextButton(onPressed:(){} , child: Text("Oder now",style: TextStyle(color: Colors.black),))
                            ,
                          ],

                        ),
                        decoration: BoxDecoration(
                          color: hexToColor('#57d369'),
                          borderRadius: BorderRadius.circular(10),


                        ),
                      ),
                    ],

                  ),

            

                ],
              );


          }).toList()
        ],
      ),
    );
  }
  buildh3(BuildContext context){
    return Container(
        child: const Align(
        alignment: Alignment(-0.25,0),
        child:Text("Find out what's cooking today!",style: TextStyle(color: Colors.brown,),),

        )
    );
  }

}


