import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Filter_screen.dart';
import 'package:untitled/LoginPage.dart';

import 'package:untitled/MoviePage.dart';
import 'package:untitled/NewsPage.dart';
import 'package:untitled/ProductsPage.dart';
import 'package:untitled/Provider/NewsProvider.dart';
import 'package:untitled/Provider/ProductProvider.dart';
import 'package:untitled/Provider/SingleProductProvider.dart';
import 'package:untitled/SignUp.dart';
import 'package:untitled/destination.dart';
import 'package:untitled/detail_product.dart';
import 'package:untitled/foodslide.dart';
import 'package:untitled/model/Cart.dart';
import 'package:untitled/model/Screenarguments.dart';
import 'package:untitled/model/product.dart';
import 'HomePage.dart';
import 'Provider/Carttam.dart';
import 'ShoppingCart.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=>ProductProvider()),
          ChangeNotifierProvider(create: (_)=>SingleProductProvider()),
          ChangeNotifierProvider(create: (_)=>CartProvider()),
          // ChangeNotifierProvider(create: (_)=>CartModel),
        ],
        child: MaterialApp(
          home:const ProductsPage(),
          routes:{
        // Login Page
            '/details':(_)=> new DetailProduct(),
            '/CartScreen':(_)=>new CartScreen(),
         '/Filter_screen': (_) => new FilterScreen(),
             // 'detail_product':(_)=> new detail_product(ModalRoute.of(context)!.settings.arguments as ScreenArgument),
            DetailProduct.routeName: (context) =>
           const DetailProduct(),
          
          
          //  detail_product.route: (context) =>
            //  detail_product(ModalRoute.of(context)!.settings.arguments as ScreenArguments),
        },
          //HomePage(),
        ),
      )
  );
}

