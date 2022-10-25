import 'package:flutter/material.dart';

import 'model/Price.dart';
import 'model/category.dart';

class FilterScreen extends StatelessWidget{
//  static const String routeName='/filters';

  FilterScreen({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context){
     return Scaffold(
       appBar: AppBar(title: Text('Filter'),),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           children: [
             Text('Price',style: Theme.of(context).textTheme.headline4!.copyWith(color: Theme.of(context).accentColor),),
             CustomPriceFilter(prices: Price.prices),
             Text('Category',style: Theme.of(context).textTheme.headline4!.copyWith(color: Theme.of(context).accentColor),),
             CustomCategoryFilter(categories:Category.mockData())

           ],
         ),
       ),
     );
  }

}

class CustomCategoryFilter extends StatelessWidget {
  final List<Category> categories;
  const CustomCategoryFilter ({
    Key? key,required this.categories,
  }): super(key:key);
@override
  Widget build(BuildContext context){

      return
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: categories.map((e) =>InkWell(
                onTap: (){},
                child:  Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                  ),child: Text(e.categoryName,style: Theme.of(context).textTheme.headline5,),
                ))).toList(),
        );


}
}
class CustomPriceFilter extends StatelessWidget{
final List<Price> prices;
const CustomPriceFilter ({
  Key? key,
  required this.prices,
}): super(key:key);
@override
  Widget build(BuildContext context)
{
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
    children: prices.map((e) =>InkWell(
      onTap: (){},
      child:  Container(
        margin: const EdgeInsets.only(top: 10,bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5)
      ),child: Text(e.price,style: Theme.of(context).textTheme.headline5,),
    ))).toList()
  );
}
}