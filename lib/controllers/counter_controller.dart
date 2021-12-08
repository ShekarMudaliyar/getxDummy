import 'package:get/get_state_manager/get_state_manager.dart';

class CounterController extends GetxController {
  var counter = 0;
  increment() {
    counter++;
    update();
  }
}
