import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  // list of items on sale
  final List _shopItems = [
    // [ itemName, itemPrice, imagePath, color ]
    ["Avocado", "4.00", "assets/avocado_rmbg.png", Colors.green],
    ["Banana", "2.50", "assets/banana_rmbg.png", Colors.yellow],
    ["Chicken", "12.80", "assets/chicken_rmbg.png", Colors.brown],
    ["Water", "1.00", "assets/water_rmbg.png", Colors.blue],
  ];


  // list of cart item
  List _cartItems = [];

  get cartItems => _cartItems;
  
  get shopItems => _shopItems;

  /// add item
  void addItemToCart(int index){
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }
  
  // remove item from cart
  void removeItemFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal(){
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++){
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}