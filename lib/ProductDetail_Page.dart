import 'package:flutter/material.dart';
import 'package:untitled/ProductsPage.dart';
import 'package:untitled/ShoppingCart.dart';
import 'package:untitled/model/product.dart';
import 'cart.dart' as cart;
class ProductDetailPage extends StatefulWidget {
  ProductDetailPage({Key? key, required this.data}) : super(key: key);
  final Product data;
  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}
int tmp =1 ;
class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.blue,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductsPage(),
                    ));
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: Colors.white70,

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: 500,
            padding: const EdgeInsets.all(30),
            color: Colors.white,
            child: Column(
              children: [
                Center(
                  child: Image.network(
                    widget.data.image.toString(),
                    height: 350,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Container(
                  height: 45,
                ),
                Text(
                  widget.data.title.toString().toUpperCase(),
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${widget.data.price.toString()}",
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(15),
                        // border: Border.all(width: 1, color: Colors.black),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  if (tmp > 1) tmp--;
                                });
                              },
                              icon: Icon(Icons.remove)),
                          Text(
                            tmp.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  tmp++;
                                });
                              },
                              icon: Icon(Icons.add)),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Description",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 10,
                ),
                Text(
                  widget.data.description.toString(),
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 103, 103, 103)),
                ),
                Container(
                  height: 10,
                ),

                Container(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 120, right: 120, bottom: 7),
        child: SizedBox(
          width: 200,
          height: 45,

          child: ElevatedButton.icon(

            icon: Icon(
              Icons.shopping_cart,
              color: Colors.blue,
            ),
            label: Text(
              "Add to cart",
              style: TextStyle(fontSize: 17),
            ),
            onPressed: () {
              setState(() {
                 cart.add(widget.data, tmp);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartScreen()),

                );
              });
            },
            style: ElevatedButton.styleFrom(
              primary:
              // Color.fromARGB(255, 242, 241, 239),
              Colors.blue,
              shape: RoundedRectangleBorder(),

              // padding: EdgeInsets.all(25),
            ),
          ),
        ),
      ),
    );
  }
}
