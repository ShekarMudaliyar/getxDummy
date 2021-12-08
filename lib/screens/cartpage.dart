import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdummy/controllers/cart_controller.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cart Page'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: GetX<CartController>(builder: (value) {
                  return value.cartItems.isEmpty
                      ? const Center(child: CircularProgressIndicator())
                      : ListView.builder(
                          itemCount: value.cartItems.length,
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
                                      Text(value.cartItems[index].name!),
                                      Text(value.cartItems[index].desc!),
                                      Text(value.cartItems[index].price
                                          .toString())
                                    ],
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        value.removeFromCart(
                                            value.cartItems[index]);
                                      },
                                      child: const Text('remove from cart'))
                                ],
                              ),
                            );
                          });
                }),
              ),
              GetX<CartController>(builder: (context) {
                return Text('total price ${context.totalPrice}');
              }),
            ],
          ),
        ));
  }
}
