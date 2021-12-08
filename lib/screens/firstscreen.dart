import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdummy/screens/secondscreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.to(() => const SecondScreen());
            },
            child: const Text('Go to Second screen')),
      ),
    );
  }
}
