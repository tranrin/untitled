

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'Provider/NewsProvider.dart';
import 'Provider/NewsProvider.dart';
import 'model/category.dart';
class NewsPage extends StatefulWidget
{
  @override
  _NewsPage createState()=>_NewsPage();
}
class _NewsPage extends State<NewsPage>
{
  List<Category> categories= Category.mockData();
  @override
  void initState(){
    super.initState();

  }
  @override
  Widget build(BuildContext context){
    var newsProvider= Provider.of<NewsProvider>(context);
    newsProvider.getList();
    return Scaffold(
    appBar: AppBar(),
    body: Container(

      child: SingleChildScrollView(
        child: Column(
          children: [
            ...categories.map((e) {
           return  Container(

              child:Row(
                children: [
                  Container(
                  )
               ,


                ],

        )
            );
            }).toList(),
            ...newsProvider.list.map((e) {
              return Container(
                child: Column(
                  children: [

                    Image.network(e.urlToImage??"hello"),
                    Text(e.title??"" ,style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(e.content??"")
                  ],
                ),
              );
              // return Text(e.title??"hello");
            }).toList()
          ],
        ),
      ),
    ),


    );


    //////
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [...newsProvider.list.map((e)
    {
      return Text(e.title??"hello");

    }).toList()
        ],
      ),

    );
  }
}
class CategoryTile extends StatelessWidget{
  final imageUrl, categoryName;
  CategoryTile({this.imageUrl,this.categoryName});
  @override
  Widget  build(BuildContext context ){
    return Container(
      child:(Stack(
        children: [
          Image.asset(imageUrl,width: 120,height: 60)
        ],
      ))
    );
  }
}

