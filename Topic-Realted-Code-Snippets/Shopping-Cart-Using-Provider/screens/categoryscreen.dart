import 'package:flutter/material.dart';
import 'package:practice/constant.dart';
import 'package:practice/itemList.dart';
import 'package:practice/model/item_model.dart';
import 'package:practice/provider/cartprovider.dart';
import 'package:practice/screens/cartscreen.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
        centerTitle: true,
        backgroundColor: primarycolor,
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              },
              child: const Icon(Icons.shopping_cart)),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) =>
              CategoryItem(isCartItem: false, item: items[index])),
    );
  }
}

class CategoryItem extends StatelessWidget {
  CategoryItem({
    super.key,
    required this.item,
    required this.isCartItem,
  });

  Item item;
  bool isCartItem;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context, listen: false);
    return ListTile(
      title: Text(item.title),
      subtitle: Text("${item.price} \$"),
      leading: Container(
        height: 50,
        width: 50,
        color: item.color,
      ),
      trailing: isCartItem? null : ElevatedButton(
          onPressed: () {
            provider.addItem(item);
          },
          style: ElevatedButton.styleFrom(backgroundColor: primarycolor),
          child: const Text("Add")),
    );
  }
}
