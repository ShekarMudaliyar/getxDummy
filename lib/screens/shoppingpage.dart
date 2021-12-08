import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdummy/controllers/cart_controller.dart';
import 'package:getxdummy/controllers/shopping_controller.dart';
import 'package:getxdummy/screens/cartpage.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shoppingController = Get.put(ShoppingController());
    final cartController = Get.put(CartController());
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shopping Page'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: GetX<ShoppingController>(builder: (value) {
                  return value.products.isEmpty
                      ? const Center(child: CircularProgressIndicator())
                      : ListView.builder(
                          itemCount: value.products.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(value.products[index].name!),
                                      Text(value.products[index].desc!),
                                      Text(value.products[index].price
                                          .toString())
                                    ],
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        cartController
                                            .addToCart(value.products[index]);
                                      },
                                      child: const Text('Add to cart'))
                                ],
                              ),
                            );
                          });
                }),
              ),
              GetX<CartController>(builder: (context) {
                return Text('total price ${context.totalPrice}');
              }),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => const CartPage());
                  },
                  child: const Text('Go to cart')),
              ElevatedButton(
                  onPressed: () {
                    if (Get.isDarkMode) {
                      Get.changeThemeMode(ThemeMode.light);
                    } else {
                      Get.changeThemeMode(ThemeMode.dark);
                    }
                  },
                  child: const Text('change theme'))
            ],
          ),
        ));
  }
}
