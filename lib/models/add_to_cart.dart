import 'package:get/get.dart';

class CartModel {
  String name;
  String image;
  var price;
  var quantity;
  CartModel({this.name, this.image, this.price, this.quantity});
}

class AddToCartController extends GetxController {
  var cartList = List<CartModel>().obs;

  addToCart(name, image, price, quantity) {
    final cart =
        CartModel(name: name, image: image, price: price, quantity: quantity);
    cartList.add(cart);
  }

  removeItem(index) {
    cartList.remove(cartList[index]);
  }

  cartLength() {
    var length = cartList.length;
    return length;
  }
}
