import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../controller/counter_controller.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Controller controller = Controller();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // GetBuilder<Controller>(
            //   // specify type as Controller
            //   init: Controller(), // intialize with the Controller
            //   builder: (value) => Text(
            //     '${value.counter}', // value is an instance of Controller.
            //   ),
            // ),
            // GetX<Controller>(
            //   init: Controller(),
            //   builder: (val) => Text(
            //     '${val.counter.value}',
            //   ),
            // ),
            // GetBuilder<Controller>(builder: (val) {
            //   return ElevatedButton(
            //     onPressed: () {
            //       val.increment();
            //     },

            //     ///object.counter,
            //     child: Text('+'),
            //   );
            // }),
            Obx(
              () => Text(controller.count.string),
            ),
            ElevatedButton(
              onPressed: () {
                controller.counter();
              },
              child: Text("AA"),
            ),
          ],
        ),
      ),
    );
  }
}
