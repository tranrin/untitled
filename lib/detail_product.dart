



import 'package:badges/badges.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Provider/SingleProductProvider.dart';

import 'Provider/Carttam.dart';
import 'model/Screenarguments.dart';
import 'model/product.dart';
import 'cart.dart' as cart;

int tmp=1;

class DetailProduct extends  StatefulWidget{
 // detail_product({Key? key, required this.arguments}) : super(key: key);
  const DetailProduct({super.key});
  static const String routeName = '/details';



  @override
  Widget build(BuildContext context){
    final cart = Provider.of<CartProvider>(context);
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    print(args.id+'id duoc truyen la');



   var singleProductProvider= Provider.of<SingleProductProvider>(context,listen: true);
    singleProductProvider.getList(args.id);
    List<Product> tam=[singleProductProvider.product];
    print(args.id+'id duoc truyen la2');


      return Scaffold(

        appBar: AppBar(
          actions: [
            Badge(
              badgeContent: Consumer<CartProvider>(
                builder: (context, value, child) {
                  return Text(
                    value.getCounter().toString(),
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  );
                },
              ),
              position: const BadgePosition(start: 30, bottom: 30),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/CartScreen');
                },
                icon: const Icon(Icons.shopping_cart),
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
          ],


          leading: SizedBox(
            height: 10,
            width: 10,
            child: FlatButton(
              onPressed: ()=>Navigator.pop(context),
              child: Icon(Icons.arrow_back,color: Colors.white,),
            ),
          ),
        ),



        body: SafeArea(
        child: Column(
          children: [

            // singleProductProvider.product.map((e)
            //
            // {  return ( Body(product_detail:e)
            // );
            // }
            // )




          ],
        )
      ),
      );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }


}
class Body extends StatelessWidget{
  final Product  product_detail;

  const Body({Key? key, required this.product_detail}):super(key:key);
  @override

  Widget build (BuildContext context)
  {
    return Column(
      children: [
        ProductImage(product:product_detail),
        ContentContainer(
          color: Colors.white,
          child: descriptionproduct(product_detail: product_detail),
        ),NumbericBtn()



      ],
    );

  }

}

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key);
  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: FlatButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Colors.white,
        onPressed: press, child: Icon(iconData),
      ),
    );
  }
}

class TopRoundContainer extends StatelessWidget {
  const TopRoundContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class NumbericBtn extends StatelessWidget {
  const NumbericBtn({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    var singleProductProvider= Provider.of<SingleProductProvider>(context,listen: true);
    singleProductProvider.getList(args.id);
    List<Product> tam=[singleProductProvider.product];
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(

                  children: [
                    Row(
                      children: [
                        RoundedIconBtn(
                          iconData:Icons.remove,
                          press: (){
                            if(tmp>1) tmp--;
                          },
                        )
                        ,SizedBox(width: 20,),
                        Text(tmp.toString()),
                        SizedBox(width: 20,),
                        RoundedIconBtn(
                            iconData:Icons.add,
                            press:(){tmp++;}
                        )

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        ButtonTheme(

                          height: 100,
                        minWidth: 100,

                          padding:const EdgeInsets.all(50),
                          child:  ElevatedButton(
                            child: Text("add to cart",style: TextStyle(fontSize: 30),),
                            onPressed: (){
          cart.add(singleProductProvider.product, tmp);
                            },
                          ),

                        )
                      ],
                    )


                  ],


                  ),
    );
  }
}

class descriptionproduct extends StatelessWidget {
  const descriptionproduct({
    Key? key,
    required this.product_detail,
  }) : super(key: key);

  final Product product_detail;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          product_detail.title.toString(),
          style: Theme.of(context).textTheme.headline6,
        ),),
        Padding(padding: EdgeInsets.only(left: 20,right: 64)
        ,
        child: Text(
          product_detail.description.toString(),
          maxLines: 3,
        ),),
        Padding(padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,

        ),
         )

      ],
    );
  }
}

class ContentContainer extends StatelessWidget {
  const ContentContainer({
    Key? key,required this.color,required this.child,
  }) : super(key: key);
  final Color color;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(top:20),
      padding: EdgeInsets.only(top:20),
      width: double.infinity,
      decoration: BoxDecoration(color: color,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
      topRight: Radius.circular(40))),
      child:  child,
    );
  }
}

class ProductImage extends StatelessWidget{
  final Product product;
  const ProductImage({
    Key? key,required this.product,
}):super(key:key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        SizedBox(
          width: 238,
          child: AspectRatio(
            aspectRatio: 1,
            child:   Image.network(product.image??"hello",width: 100,height: 60,),
          ),
        )
      ],

    );
  }
}


