import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FourthVideo extends StatelessWidget {
  const FourthVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth Video'),
      ),body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: (){
                Get.bottomSheet(
                  Container(
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.wb_sunny_outlined),
                          title: const Text('Dark Theme'),
                          onTap: () => {
                            Get.changeTheme(ThemeData.dark())
                          },
                        ),

                        ListTile(
                          leading: const Icon(Icons.wb_sunny),
                          title: const Text('Light Theme'),
                          onTap: () => {
                            Get.changeTheme(ThemeData.light())
                          },
                        )
                      ],
                    ),
                  ),
                  barrierColor: Colors.green.shade100,
                  backgroundColor: Colors.purpleAccent,
                  // isDismissible:false,
                    //enableDrag: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 2.0
                    )
                  )
                );

              },child: Text('Fourth'),
            ),
          )
      ],
    ),
    );
  }
}
