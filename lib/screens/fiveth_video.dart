// <----------------------------------Navigation Routes ----------------------------->

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FivethVideo extends StatelessWidget {
  const FivethVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FIVETH VIDEO'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () async {
                // Get.to(FivetheVideoHome(),
                //   fullscreenDialog: true,
                //   transition: Transition.zoom,
                //   //duration: Duration(milliseconds: 2000),
                //   curve: Curves.bounceInOut,
                //
                // );

                // Go to home screen but no option to return to previous screen
                // Get.off(FivetheVideoHome());

                //Go to home screen and cancel all previous screens/ routes
                // Get.offAll(FivetheVideoHome());

                // Go the next screen with some data
                // Get.to(FivetheVideoHome(),arguments: 'Data from Fiveth main screen');

                // Go to next screen and receive data sent home screen
                var data = await Get.to(FivetheVideoHome());
                print('The Received data is $data');
              },
              child: Text('Elevated Button'),
            ),
          )
        ],
      ),
    );
  }
}

class FivetheVideoHome extends StatelessWidget {
  const FivetheVideoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FIVETH VIDEO HOME'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('NextScreen'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.back();
                  // Sent data to previous screen must use result as name
                  Get.back(result: 'This is from FivethVideoHome');
                },
                child: Text('Back to FivethVideo'),
              ),
              SizedBox(
                height: 50,
              ),
              // Text(
              // ' ${Get.arguments}',
              //   style: TextStyle(color: Colors.green,fontSize: 20),
              // )
            ],
          ))
        ],
      ),
    );
  }
}
