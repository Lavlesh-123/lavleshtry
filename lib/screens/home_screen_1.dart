import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen_1 extends StatelessWidget {
   HomeScreen_1({Key? key}) : super(key: key);


var count = 0.obs;

void Increament(){
  count++;
}
  @override
  Widget build(BuildContext context) {
    print('Rebuilt');
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen_1'),
      ),body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
          Obx(() => Text('$count')),
          const SizedBox(height: 50,),
        

         ElevatedButton(onPressed: (){
            Increament();
          }, child:const Text('Increament'))

       
        ],
      )
    );
  }
}
