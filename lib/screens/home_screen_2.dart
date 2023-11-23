//<------------------------------First Way ------------------------------------------->


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class HomeScreen_2 extends StatelessWidget {
//    HomeScreen_2({Key? key}) : super(key: key);
//     var student = Student();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('HomeScreen_2'),
//       ),body: Column(
//       children: [
//         Obx(() => Text('Name is ${student.name.value}',)),
//         SizedBox(height: 22,),
//         ElevatedButton(onPressed: (){
//
//           student.name.value = student.name.value.toUpperCase();
//         }, child: Text('Upper'))
//       ],
//     )
//     );
//   }
// }
// class Student {
//   var name = 'Tom'.obs;
//   var age = 25.obs;
// }

//<---------------------------------------------Second Way------------------------------------->
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class HomeScreen_2 extends StatelessWidget {
   HomeScreen_2({Key? key}) : super(key: key);
  final student = Student(name: 'tom',age: 25).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen_2'),
      ),body: Column(
      children: [
        
        Obx(() => Text('Name is ${student.value.name}')),
        const SizedBox(height: 50,),
        ElevatedButton(onPressed: (){
          student.update((student) {
            student?.name = student.name.toString().toUpperCase();
          });

        }, child: Text('Clicked'))
      ],
    ),
    );
  }
}
class Student {
  var name;
  var age;
  Student({this.name,this.age});
}