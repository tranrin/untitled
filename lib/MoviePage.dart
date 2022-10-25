
import 'package:flutter/material.dart';
class MoviePage extends StatelessWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(


        padding: const EdgeInsets.all(20.0),
        child: SafeArea(


          child:Container(
            margin: EdgeInsets.only(left: 350),
            width: 800,
            padding: EdgeInsets.all(20),

            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 66, 125, 145)
           ),




          child:
          Column(

            mainAxisAlignment: MainAxisAlignment.spaceAround, // <-- alignments
            children: <Widget>[
             buildHeaderBar(context),buildTitleBar(context),buildButtonBar(context),buildMovieSlide(context)

            ],
         




        ),

        ), )
        ),
    );



  }

  }
  buildHeaderBar(BuildContext context) {
    return Container(




      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Icon(Icons.menu),
          SizedBox(width: 500,),
          Icon(Icons.search),
          Icon(Icons.notifications),
          Icon(Icons.account_box)


        ],
      ),
    );

  }
  buildTitleBar(BuildContext context) {
    return Container(




      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         Text("Trailer",style: TextStyle(fontSize: 30),),
          SizedBox(width: 600,),
          Text("View All")


        ],
      ),
    );


  }
  buildSlideBar(BuildContext context) {

  }
buildButtonBar(BuildContext context) {
  return Container(
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      TextButton(
      style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: BorderSide(color: Colors.red)
          )
          )
          ),
          onPressed: () {},
        child: const Text("Now Showing",style: TextStyle(color:Colors.white,fontSize: 20),),
        ),SizedBox(width: 200,),
              TextButton(

              style: ButtonStyle(

              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(


                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)
                  )
              )

          ),
          onPressed: () {},
          child: const Text("Coming Soon",style: TextStyle(color:Colors.white,fontSize: 20),),
        ),



  ],
  ),
  );





  }
buildMovieSlide(BuildContext context) {

  return
    Container(
      padding: EdgeInsets.all(25.0),
      child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Container(
       //MediaQuery.of(context).size.height/3,
          height: 400,//MediaQuery.of(context).size.width,

            child:     Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Image border
                  child: SizedBox.fromSize(
                   // Image radius
                    child:  Image.asset("assets/images/10x-featured-social-media-image-size.png",
                        width: 200,
                        height: 350,
                        fit:BoxFit.fill

                  ),
                ),), ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Image border
                  child: SizedBox.fromSize(
                     // Image radius
                    child:  Image.asset("assets/images/10x-featured-social-media-image-size.png",
                        width: 200,
                        height: 400,
                        fit:BoxFit.fill

                    ),
                  ),),

                ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Image border
                  child: SizedBox.fromSize(
                    // Image radius
                    child:  Image.asset("assets/images/10x-featured-social-media-image-size.png",
                        width: 200,
                        height: 350,
                        fit:BoxFit.fill

                    ),
                  ),),



              ],

            ),

          )


          ,



          Title(color: Colors.white, child: Text("Movie",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,),)),
          Title(color: Colors.white, child: Text("Genre: Horror",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),)),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Time",style: TextStyle(fontSize: 20)
                ),
                WidgetSpan(

                  child: Icon(Icons.timer, size: 20,color: Colors.white,),
                ),

              ],
            ),
          ),
          Text(
            'Hello World! Welcome to TutorialKart for this awesome Flutter Tutorial on Text widget'
                'lsfjsalfjsalkfjsalfjsljfslajfslkajflkasjflkdsfsdajflksadfjsdalkfjsldakjfsdal',
            textAlign: TextAlign.center,
          ),



        ]



    )
    );



}

