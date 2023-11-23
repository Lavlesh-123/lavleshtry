import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThiredVideo extends StatelessWidget {
  const ThiredVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thired Video'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Get.defaultDialog();
                Get.defaultDialog(
                    title: 'Dialog Title',
                    titleStyle: TextStyle(fontSize: 25),
                    middleText: 'This is middle text',
                    middleTextStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.purpleAccent,
                    radius: 80,
                    content: const Row(
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(child: Text('Data Loading'))
                      ],
                    ),
                    textCancel: 'Cancel',
                    cancelTextColor: Colors.white,
                    textConfirm: 'Conform',
                    confirmTextColor: Colors.white,
                    onConfirm: () {
                      print('Conform');
                    },
                    onCancel: () {
                      print('Cancel');
                    },
                    buttonColor: Colors.green,
                    cancel: const Text(
                      'Cancels',
                      style: TextStyle(color: Colors.white),
                    ),
                    confirm: const Text(
                      'Conforms',
                      style: TextStyle(color: Colors.white),
                    ),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text('Action-1')),
                      ElevatedButton(onPressed: () {}, child: Text('Action-2')),

                    ],
                // barrierDismissible: false,
                  
                );
              },
              child: Text('Click me'),
            ),
          )
        ],
      ),
    );
  }
}
