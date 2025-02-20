import 'package:flutter/material.dart';
import 'package:practice/constant.dart';
import 'package:practice/provider/cartprovider.dart';
import 'package:practice/screens/categoryscreen.dart';
import 'package:provider/provider.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        centerTitle: true,
        backgroundColor: primarycolor,
      ),
      body: Consumer<CartProvider>(
        builder: (context,provider,child)=> Column(children: [
          Expanded(child: (
            ListView.builder(
              itemCount: provider.cartitems.length,
              itemBuilder: (context,index){
              
              return CategoryItem(
                isCartItem: true,
                item: provider.cartitems[index]);
            })
          )),
          Container(
            height: 30,
            width: 100,
            child: Center(child: Text("${provider.price} \$")),
            decoration: BoxDecoration(
              color: primarycolor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(height: 20,)
          ]), 
      ),
    );
  }
}
