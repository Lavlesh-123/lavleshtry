import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController{
  var count = 0.obs;
  void increment (){
    count ++;
  }
}
class tenth extends StatelessWidget {
   tenth({Key? key}) : super(key: key);

  // If init property is not used in GetX<Type of Controller > then create the instance of controller as follows.
  //MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tenth'),
      ),body: Column(
      children: [
        GetX(
            init: MyController(),
            builder: (controller){
          return Text(
             'The value is ${controller.count}'
             // 'The value is ${myController.count}'
          );
        }),
        SizedBox(height: 12,),
        ElevatedButton(onPressed: (){
         // myController.increment();
          Get.find<MyController>().increment();
        }, child: Text('Pressed'))
      ],
    ),
    );
  }
}
