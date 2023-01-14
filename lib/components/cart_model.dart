import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  final List _shopitems = [
    // [itemName, itemPrice,color, imagePath]
    ["Avocado", "4.00",  "assets/avocado.png",Colors.green],
    ["Banana", "2.50", "assets/banana.png",Colors.yellow],
    ["Water", "1.09", "assets/water.png",Colors.blue],
    ["Chicken", "12.00", "assets/chicken.png",Colors.brown]
  ];

  final List _cartItems = [];


get shopItems => _shopitems;
get cartItems => _cartItems;

void addItemCart(int , index){
  _cartItems.add(_shopitems[index]);
  notifyListeners();
}

void removeItemCart(int,index){
  _cartItems.removeAt(index);
  notifyListeners();
}


String calculateTotal(){
  double totalPrice = 0;
  for(int i = 0; i <_cartItems.length; i++){
totalPrice += double.parse(_cartItems[i][1]);
  }
  return totalPrice.toStringAsFixed(2);
}

}