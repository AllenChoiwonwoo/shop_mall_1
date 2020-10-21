import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_mall_1/screens/product_detail_screen.dart';
import 'package:shop_mall_1/screens/products_overview_screen.dart';
import 'package:shop_mall_1/providers/products.dart';
import 'package:shop_mall_1/providers/product.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //상위 버전 부터는 builder 아니고 create
      create: (ctx) => Products(),
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato'
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName : (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}
