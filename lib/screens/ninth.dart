
//<----------------------------------First Method------------------------------>

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class Student {
//   var name  = 'Tom'.obs;
//   var age = 25.obs;
// }
//
// class MyController extends GetxController{
//   var student = Student();
//   void convertToUpperCase(){
//     student.name.value = student.name.value.toUpperCase();
//   }
// }

// class ninthVideo extends StatelessWidget {
//    ninthVideo({Key? key}) : super(key: key);
//   MyController myController = Get.put(MyController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ninth'),
//       ),body: Column(
//       children: [
//       Obx(() =>   Text('kjej ${myController.student.name}'),),
//         const SizedBox(height: 50,),
//         ElevatedButton(onPressed: (){
//           myController.convertToUpperCase();
//         }, child: Text('Clikcked'))
//       ],
//     ),
//     );
//   }
// }

//<-----------------------------------Second Method----------------------------------------->

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Student {
  var name;
  var age;
  Student({this.name,this.age});
}

class MyController extends GetxController{
var student = Student(name: 'lavlesh',age: 25).obs;
  void convertUpperCase(){
    student.update((student) {
      student?.name = student.name.toString().toUpperCase();
    });
  }
}

class ninethVideo extends StatelessWidget {
   ninethVideo({Key? key}) : super(key: key);

  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ninethVideo'),
      ),body: Column(
      children: [
        Obx(() => Text('Name is ${myController.student.value.name}')),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          myController.convertUpperCase();

        }, child: Text('UpperCase'))
      ],
    ),
    );
  }
}

