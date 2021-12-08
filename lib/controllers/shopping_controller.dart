import 'package:get/get.dart';
import 'package:getxdummy/models/product_model.dart';

class ShoppingController extends GetxController {
  var products = List<Product>.empty().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }

  fetchProducts() async {
    await Future.delayed(const Duration(seconds: 1));
    var result = [
      Product(1, 'first product', 'image', 'desc', 10),
      Product(2, 'second product', 'image', 'desc', 20),
      Product(3, 'third product', 'image', 'desc', 30),
    ];
    products.value = result;
  }
}
