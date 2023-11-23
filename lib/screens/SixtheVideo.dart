import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SixtheVideoScreen extends StatelessWidget {
  const SixtheVideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Sixthe Video main Screen'),
      ),body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: ElevatedButton(
            onPressed: (){
              Get.toNamed('/home');
              // Go to home screen but no option to previous screen
              // Get.offNamed('/home');
              // Go to home screen and cancel all previous screen/routes
              // Get.offAllNamed('/home');
              //Dynamic URL link
             //  Get.toNamed(
             // '/home?channel=Ripples Code & content = Flutter GetX',
             //  );
            },
            child: const Text('ElevatedButton'),
          ),
        )
      ],
    ),
    );
  }
}


class SixtheVideoHomeScreen extends StatelessWidget {
  const SixtheVideoHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('SixtheVideoHomeScreen'),
      ),body: Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Center(
          child: Column(
            children: [
              Text('This is Home Screen'),
              ElevatedButton(
                onPressed: (){
                  //Get.toNamed('/nextScreen');
                  
                  Get.toNamed('/nextScreen/1234');
                },
                child: const Text('Next Screen'),
              ),
              ElevatedButton(
                onPressed: (){},
                child: const Text('Back to main'),
              ),
              SizedBox(height: 30,),

              Text(
                'Channel name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}',

              )
            ],
          )
        )
      ],
    ),
    );
  }
}
class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('NextScreen'),
      ),body:  Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Center(
          child: Column(
            children: [
              // Text('This is next Screen'),
              // ElevatedButton(
              //   onPressed: (){},
              //   child: const Text('NextScreen'),
              // ),

              Text(
                '${Get.parameters['someValue']}',
                style: TextStyle(color: Colors.red , fontSize: 30),
              )
            ],
          )
        )
      ],
    ),
    );
  }
}

class UnknownRoute extends StatelessWidget {
  const UnknownRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Sixthe Video UnknownRoute Screen'),
      ),body: const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child:Text('Unknown Routes')
        )
      ],
    ),
    );
  }
}