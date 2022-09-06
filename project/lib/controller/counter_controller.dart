import 'package:get/get.dart';


class Controller extends GetxController {
  // int counter = 0;

  // @override
  // void onInit(){
  //   counter = 4;
  //   super.onInit();
  // }

  // @override
  // void onReady(){
  //   counter = 8;
  //   super.onReady();
  // }

  // void increment() {
  //   counter++;
  //   update(); // look here!
  // }

  /// GEtX
  // var counter = 0.obs;

  // void increment() => counter.value++;

  var count = 0.obs; // declare just like any other variable

  void counter() =>
      count.value++; // use .value and access any variables of the class

}
