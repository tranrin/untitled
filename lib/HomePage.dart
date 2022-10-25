
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(

      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Container(


          ),
          ElevatedButton(onPressed: (){

              Navigator.of(context).pushNamed("/Login");




            }

          ,child: Text("Back"),),

          blockImage(),blockTitle(),blockIcon(),blockText(),
        ],
      ),

    );

    }

  blockImage(){
    return Image.asset("assets/images/1556323.jpg",width: 1000,height: 340,fit: BoxFit.cover,);

  }
  blockTitle() {
    return Container(
      padding: EdgeInsets.only(top: 50,bottom: 50),
      alignment: Alignment.center,
      margin: EdgeInsets.only(left:260),
        child: Row(
        //  crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Column(
                children: [
                      Row(

                        children:[
                          Container(
                            padding: EdgeInsets.only(bottom:20),
                            margin: EdgeInsets.only(left: 70),
                            child:  Text("Oeshinen Lake Campround",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 50,color: Colors.black.withOpacity(0.8),



                              ),
                              // textAlign: TextAlign.right,
                            ) ,
                          )


                        ]

                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right:300),
                            margin: EdgeInsets.only(left: 0),
                           child: Text("Kandersteg, Switzerland",
                             // textAlign: TextAlign.left,
                              style:TextStyle(fontSize:20,color:Colors.black.withOpacity(0.8),
                                decoration: TextDecoration.none,),

                            ),

                          )



                        ],
                      )
                      //padding: const EdgeInsets.only(bottom: 8),

                ]
            ),
                Column(
                  children:[
                    Container(
                      margin: EdgeInsets.only(left: 200,bottom: 15),
                        child:Row(

                          children:[
                            Icon(
                              Icons.star,
                              color: Colors.redAccent,
                              size: 50.0,

                            ),
                            Text("41",style:TextStyle(fontSize: 20,color: Colors.black, decoration: TextDecoration.none,),),

                          ],


                        )

                    ),




                  ],


                )



          ],
        )
    );
  }
  Row blockIcon(){
    return Row(

      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Container(

          margin: EdgeInsets.only(bottom: 20),
          child:Row(
          children: [
          Column(

            children:[
              Icon(Icons.phone,color: Colors.blueAccent,size: 100,),
              Container(
                margin:EdgeInsets.only(left: 100.0, right: 100.0),
                child: Text(
                  "call",style: TextStyle(fontSize: 12,color: Colors.blue, decoration: TextDecoration.none,),
                ),
              )
          ]
        ),
        Column(
            children:[
              Icon(Icons.route_sharp,color: Colors.blueAccent,size: 100,),
              Container(
                margin:EdgeInsets.only(left: 100.0, right: 100.0),
                child: Text(
                  "Route",style: TextStyle(fontSize: 12,color: Colors.blue, decoration: TextDecoration.none,),
                ),
              )
            ]
        ),
        Column(
            children:[
              Icon(Icons.share,color: Colors.blueAccent,size: 100,),
              Container(
                margin:EdgeInsets.only(left: 100.0, right: 100.0),
                child: Text(
                  "Share",style: TextStyle(fontSize: 12,color: Colors.blue, decoration: TextDecoration.none,),
                ),
              ),
            ],
        ),
    ],
      ),
    ),
    ],
    );
  }
  blockText(){
    return Container(
     // padding: EdgeInsets.all(16.0),
      width: 1000,
      height: 500,
      child: Text(
        "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"

      , textAlign: TextAlign.left,
        style: TextStyle(color: Colors.black,fontSize: 11.375, decoration: TextDecoration.none,),),
    );
  }
  }
