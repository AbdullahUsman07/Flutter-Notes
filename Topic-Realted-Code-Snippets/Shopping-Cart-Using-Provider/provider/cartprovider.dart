

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:practice/model/item_model.dart';

class CartProvider extends ChangeNotifier{

  List<Item> _cartitems=[];

  UnmodifiableListView get cartitems => UnmodifiableListView(_cartitems);
  double get price => _cartitems.fold<double>(0.0, (previousValue, element) => previousValue += element.price);

  void addItem(Item item){
    _cartitems.add(item);
    notifyListeners();
  }

  void clearCart(){
    _cartitems.clear();
    notifyListeners();
  }
}