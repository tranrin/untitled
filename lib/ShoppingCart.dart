import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart.dart' as cart;
class CartScreen extends StatefulWidget { const CartScreen({
  Key? key,
}) : super(key: key);

@override
State<CartScreen> createState() => _CartScreenState();
}
class _CartScreenState extends State<CartScreen> {
  //
  //
  // @override
  // void initState() {
  //   super.initState();
  //   context.read<CartProvider>().list;
  // }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      Container(

        padding: EdgeInsets.all(20),
        child:
            ElevatedButton(
              onPressed: (){}, child:  Text('Total :'+ cart.total().toStringAsFixed(2),style: TextStyle(fontSize: 50),),
            )

      ),
     
      appBar: AppBar(

        centerTitle: true,
        title: const Text('My Shopping Cart'),
     
      ),
      body: Container(
        width: 500,
        height: 1000,
        child: Expanded(
          child: Container(
            child: ListView(
              children: [
                ...cart.list.map((e) {
                  
                  return Container(
                    height: 100,
                    child: Row(children: [
                      Container(
                        margin:EdgeInsets.only(left: 5),
                        child:  Image.network(e.model.image.toString(),width: 100,) ,
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 20,top: 20),
                        width: 150,

                        child: Column(children: [
                          Text(e.model.title.toString(),overflow: TextOverflow.ellipsis,maxLines: 2,),

                          Text('Price:'+ (e.model.price! * e.quantity).toStringAsFixed(2),style: TextStyle(fontSize: 15),),

                        ],),
                      ),
                      Container(

                        child:Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if(e.quantity>1){
                                          cart.removeQuatity(e.model);
                                        }
                                      });
                                    }, icon: Icon(Icons.remove)),
                                Text(e.quantity.toString()),
                                IconButton(onPressed: () {setState(() {
                                  cart.addQuatity(e.model);
                                });}, icon: Icon(Icons.add)),

                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if(e.quantity>=1){
                                          cart.removeProduct(e.model.id!);
                                        }
                                      });
                                    }, icon: Icon(Icons.highlight_remove)),


                              ],
                            ),
                          ],

                      ),


                      ),





                    ],),
                  );
                }),


              ],
            ),
          ),
        ),
      ),);
      // body: Column(
      //   children: [
      //     Expanded(
      //       child: Consumer<cart>(
      //         builder: (BuildContext context, provider, widget) {
      //           if (provider.list.isEmpty) {
      //             return const Center(
      //                 child: Text(
      //                   'Your Cart is Empty',
      //                   style:
      //                   TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
      //                 ));
      //           } else {
      //             return ListView.builder(
      //                 shrinkWrap: true,
      //                 itemCount: provider.list.length,
      //                 itemBuilder: (context, index) {
      //                   return Card(
      //                     color: Colors.white70,
      //                     elevation: 5.0,
      //                     child: Padding(
      //                       padding: const EdgeInsets.all(2.0),
      //                       child: Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                         mainAxisSize: MainAxisSize.max,
      //                         children: [
      //                           Image(
      //                             height: 80,
      //                             width: 80,
      //                             image:
      //                             AssetImage(provider.list[index].image!),
      //                           ),
      //                           SizedBox(
      //                             width: 200,
      //                             child: Column(
      //                               crossAxisAlignment:
      //                               CrossAxisAlignment.start,
      //                               children: [
      //                                 const SizedBox(
      //                                   height: 5.0,
      //                                 ),
      //                                 RichText(
      //                                   overflow: TextOverflow.ellipsis,
      //                                   maxLines: 1,
      //                                   text: TextSpan(
      //                                       text: 'Title: ',
      //                                       style: TextStyle(
      //                                           color: Colors.blueGrey.shade800,
      //                                           fontSize: 16.0),
      //                                       children: [
      //                                         TextSpan(
      //                                             text:'${provider.list[index].title!}\n',
      //                                             style: const TextStyle(
      //                                                 fontWeight:
      //                                                 FontWeight.bold)),
      //                                       ]),
      //                                 ),
      //                                 RichText(
      //                                   maxLines: 1,
      //                                   text: TextSpan(
      //                                       text: 'Category:',
      //                                       style: TextStyle(
      //                                           color: Colors.blueGrey.shade800,
      //                                           fontSize: 16.0),
      //                                       children: [
      //                                         TextSpan(
      //                                             text:
      //                                             '${provider.list[index].category!}\n',
      //                                             style: const TextStyle(
      //                                                 fontWeight:
      //                                                 FontWeight.bold)),
      //                                       ]),
      //                                 ),
      //                                 RichText(
      //                                   maxLines: 1,
      //                                   text: TextSpan(
      //                                       text: 'Pride: ' r"$",
      //                                       style: TextStyle(
      //                                           color: Colors.blueGrey.shade800,
      //                                           fontSize: 16.0),
      //                                       children: [
      //                                         TextSpan(
      //                                             text:
      //                                             '${provider.list[index].price!}\n',
      //                                             style: const TextStyle(
      //                                                 fontWeight:
      //                                                 FontWeight.bold)),
      //                                       ]),
      //                                 ),
      //                             Row(
      //                               children: [
      //                                 PlusMinusButtons(addQuantity: (){}, deleteQuantity: (){}, text: '5'),
      //
      //                                 SizedBox(width: 20,),
      //                                 RoundedIconBtn(
      //                                     iconData:Icons.delete,
      //                                     press:(){}
      //                                 )
      //
      //                               ],
      //                             ),
      //
      //                               ],
      //                             ),
      //                           ),
      //
      //                         ],
      //                       ),
      //                     ),
      //                   );
      //                 });
      //           }
      //         },
      //       ),
      //     ),
      //     Consumer<CartProvider>(
      //       builder: (BuildContext context, value, Widget? child) {
      //         final ValueNotifier<int?> totalPrice = ValueNotifier(null);
      //         for (var element in value.list) {
      //           totalPrice.value =
      //               (5*8) +
      //                   (totalPrice.value ?? 0);
      //         }
      //         return Column(
      //           children: [
      //             ValueListenableBuilder<int?>(
      //                 valueListenable: totalPrice,
      //                 builder: (context, val, child) {
      //                   return ReusableWidget(
      //                       title: 'Sub-Total',
      //                       value: r'$' + (val?.toStringAsFixed(2) ?? '0'));
      //                 }),
      //           ],
      //         );
      //       },
      //     )
      //   ],
      // ),



  }
}