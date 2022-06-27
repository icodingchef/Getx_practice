import 'package:get/get.dart';
import '../models/proudct.dart';

class CartController extends GetxController{
  var cartItems = <Product>[].obs;
  int get count => cartItems.length;
  double get totalPrice =>  cartItems.fold(0, (e, item) => e + item.price);

  addToCart(Product product){
    cartItems.add(product);
  }
}