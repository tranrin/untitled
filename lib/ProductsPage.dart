

import 'package:flutter/material.dart';
import 'package:untitled/ProductDetail_Page.dart';
import 'cart.dart' as cart;
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:untitled/Provider/ProductProvider.dart';
import 'package:untitled/detail_product.dart';
import 'package:untitled/model/Screenarguments.dart';
import 'package:untitled/model/product.dart';

import 'Provider/NewsProvider.dart';
import 'Provider/NewsProvider.dart';
import 'model/category.dart';

bool isLoading = true;

class ProductsPage extends StatefulWidget
{
  const ProductsPage({Key? key}) : super(key: key);
  @override
  _ProductsPage createState()=>_ProductsPage();

}
class _ProductsPage extends State<ProductsPage>
{

  var searchValue;
  Icon customIcon = const Icon(Icons.search);

  @override

  Widget build(BuildContext context){
    final productProvider= Provider.of<ProductProvider>(context);

    if(isLoading){
      (() async {
        await productProvider.getList();
        setState(() {
          isLoading=false;
        });
      })();
    }



    return Scaffold(
      appBar: AppBar(
        leading: IconButton (
          icon: Icon(Icons.filter_alt),
          onPressed: () {
            Navigator.of(context).pushNamed("/Filter_screen");
            /** Do something */
          },
        ),

        title: Text("Rin Shop"),
        actions: [
          IconButton(
            onPressed: () {

              // method to show the search bar
              showSearch(
                  context: context,
                  // delegate to customize the search bar
                  delegate: CustomSearchDelegate()
              );
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),

          TextField(
            onChanged: (value)  {
              (() async{
                await productProvider.getList();
                setState(() {
                  productProvider.searchProduct(value);
                });

              })();
            },
            style: const TextStyle(color: Colors.blue),
            decoration: InputDecoration(
              // hintText: "Search the title of a product",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))),
          ),




              Expanded(
                  child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,


                children: [

                  ...productProvider.list.map((e) {
                return Container(
                    width: 500,
                  height: 500,

                  alignment: Alignment.center,
                      child:Column(
                        children:[

                          Image.network(e.image??"hello",width: 100,height: 60,),

                            Text(e.title??"" ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),overflow: TextOverflow.ellipsis,maxLines: 2,),
                          Row(

                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              SizedBox(width: 10,),
                              ElevatedButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>ProductDetailPage(data: e)));
                              }, child: Text("Detail"),),
                            ],
                          )

                        ],

                      )
                );
                // return Text(e.title??"hello");
              }).toList()
      ] ),



    ),],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: (){
        Navigator.of(context).pushNamed('/CartScreen');

      },
      tooltip: 'Increment',
      child: new Icon(Icons.add_shopping_cart),
    ),


    );


    //////


  }
  //Search bar




}
class CustomSearchDelegate extends SearchDelegate {
// Demo list to show querying
  List<Product> searchTerms =ProductProvider().list;

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        buildSuggestions(context);
        print(context);

        buildResults(context);
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var product in searchTerms) {
      if (product.title!.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(product.title!);
      }

    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var product in searchTerms) {
      if (product.title!.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(product.title!);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

}


