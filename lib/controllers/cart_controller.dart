import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getxdummy/models/product_model.dart';

class CartController extends GetxController {
  var cartItems = List<Product>.empty().obs;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price!);
  addToCart(Product product) {
    cartItems.add(product);
  }

  removeFromCart(Product product) {
    cartItems.remove(product);
  }
}
