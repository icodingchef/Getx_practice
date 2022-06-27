import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_app1/models/proudct.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
          id: 1,
          price: 30,
          productDescription: 'some description about product',
          productName: 'Mouse'),
      Product(
          id: 2,
          price: 40,
          productDescription: 'some description about product',    
          productName: 'Keyboard'),
      Product(
        id: 3,
        price: 620,
        productDescription: 'some description about product',
        productName: 'Monitor',
      ),
      Product(
          id: 4,
          price: 80,
          productDescription: 'some description about product',
          productName: 'Ram'),
      Product(
        id: 5,
        price: 120.5,
        productDescription: 'some description about product',
        productName: 'Speaker',
      ),
    ];

    products.assignAll(productResult);
  }
}
