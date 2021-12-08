import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdummy/main.dart';

import 'secondscreen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.offAll(() => const MyHomePage());
            },
            child: const Text('Go to Home screen')),
      ),
    );
  }
}
