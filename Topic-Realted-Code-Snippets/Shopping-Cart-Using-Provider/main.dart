import 'package:flutter/material.dart';
import 'package:practice/provider/cartprovider.dart';
import 'package:practice/screens/categoryscreen.dart';
import 'package:provider/provider.dart';

void main() => runApp(ShoppingCart());

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CategoryScreen(),
      ),
    );
  }
}
