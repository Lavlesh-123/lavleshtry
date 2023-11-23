import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController{

  var count = 0;
  void increment (){
    count++;
    update();
  }
}

class elevanth extends StatelessWidget {
  const elevanth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Elevanth'),
      ),body: Column(
      children: [
        GetBuilder(
            init: MyController(),
            builder: (controller){
          return Text(
            'The value is ${controller.count}',
          );
        }),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          Get.find<MyController>().increment();
        }, child: Text('Update'))
      ],
    ),
    );
  }
}
