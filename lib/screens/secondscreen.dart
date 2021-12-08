import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdummy/screens/thirdscreen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.to(() => const ThirdScreen());
            },
            child: const Text('Go to Third screen')),
      ),
    );
  }
}
