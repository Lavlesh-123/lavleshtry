import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondVideo extends StatelessWidget {
  const SecondVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Video'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.snackbar(
                    'Error', 'Please enter valid Email Address and Password',
                    backgroundColor: Colors.red,
                    isDismissible: true,
                    icon: Icon(Icons.error_outline),
                    //leftBarIndicatorColor: Colors.grey,
                    mainButton: TextButton(
                        onPressed: () {
                          log('Text is clicked');
                        },
                        child: Text('Text')),
                    onTap: (val) {
                      log('SnackBar is clicked');
                    },
                    overlayBlur: 2,
                    overlayColor: Colors.grey,
                    // padding: EdgeInsets.all(50),
                    showProgressIndicator: true,
                    progressIndicatorBackgroundColor: Colors.green,
                    progressIndicatorValueColor:
                        const AlwaysStoppedAnimation(Colors.white),
                    reverseAnimationCurve: Curves.bounceInOut,
                    snackbarStatus: (val) {
                      print(val);
                    },
                    // userInputForm: Form(child: Row(children: [
                    //   Expanded(child: TextField())
                    // ],)),
                    dismissDirection: DismissDirection.horizontal,
                    forwardAnimationCurve: Curves.bounceInOut,
                    duration: Duration(milliseconds: 2000));
              },
              child: Text('Click'),
            ),
          )
        ],
      ),
    );
  }
}
