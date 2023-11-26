import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/screens/SixtheVideo.dart';
import 'package:getx_tutorial/screens/thired_video.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyB9kDIpHc12NfblI-rTk5rpj1E5dOp9xDM",
          appId: "1:619598138404:android:830754718656f931c5dcb1",
          messagingSenderId: "619598138404",
          projectId: 'getx-tutorial-1455b'));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //< --------------- For SixtheVideo Screen -------------------->
      // initialRoute: '/',
      // defaultTransition: Transition.zoom,
      // getPages: [
      //   GetPage(name: '/', page: () => const SixtheVideoScreen()),
      //   GetPage(name: '/home', page: () => SixtheVideoHomeScreen()),
      //   // GetPage(name: '/nextScreen', page: () => NextScreen(),
      //   // transition: Transition.leftToRight,
      //   //),
      //
      //   GetPage(
      //       name: '/nextScreen/:someValue',
      //       page: () => NextScreen(),
      //
      //       // TO control the transition route wise
      //       // If specified will override the default transition
      //
      //       transition: Transition.leftToRight)
      // ],
      // unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoute()),
      home: check(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class Product {
//   final String name;
//   bool isWished;
//
//   Product({required this.name, this.isWished = false});
// }
//
// void main() {
//   runApp(MyApp());
// }
//
// class WishlistController extends GetxController {
//   var productList = <Product>[
//     Product(name: 'Laptop'),
//     Product(name: 'LED'),
//     Product(name: 'Mouse'),
//     Product(name: 'I Pad'),
//     Product(name: 'Broadband'),
//     Product(name: 'Neckband'),
//   ].obs;
//
//   void toggleWishlist(int index) {
//     productList[index].isWished = !productList[index].isWished;
//     update(); // Notify GetX that the state has changed
//   }
//
//   void removeFromWishlist(int index) {
//     productList[index].isWished = false;
//     update(); // Notify GetX that the state has changed
//   }
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       home: ProductScreen(),
//     );
//   }
// }
//
// class ProductScreen extends StatelessWidget {
//   final WishlistController wishlistController = Get.put(WishlistController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product Screen'),
//       ),
//       body:
//       Padding(
//         padding: EdgeInsets.all(16.0),
//         child: GetBuilder<WishlistController>(
//           builder: (controller) {
//             return ListView.builder(
//               itemCount: controller.productList.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(controller.productList[index].name),
//                   trailing: GestureDetector(
//                     onTap: () {
//                       wishlistController.toggleWishlist(index);
//                     },
//                     child: Obx(() => Icon(
//                       controller.productList[index].isWished
//                           ? Icons.favorite
//                           : Icons.favorite_border,
//                       color: controller.productList[index].isWished
//                           ? Colors.red
//                           : null,
//                     )),
//                   ),
//                 );
//               },
//             );
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Get.to(WishlistScreen());
//         },
//         child: Icon(Icons.list),
//       ),
//     );
//   }
// }
//
// class WishlistScreen extends StatelessWidget {
//   final WishlistController wishlistController = Get.put(WishlistController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Wishlist Screen'),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(16.0),
//             child: TextField(
//               decoration: InputDecoration(
//                 labelText: 'Search wished products',
//                 prefixIcon: Icon(Icons.search),
//                 border: OutlineInputBorder(),
//               ),
//               onChanged: (value) {
//                 // Filter wishlist based on search query
//                 wishlistController.productList.forEach((product) {
//                   if (product.name.toLowerCase().contains(value.toLowerCase())) {
//                     product.isWished = true;
//                   } else {
//                     product.isWished = false;
//                   }
//                 });
//                 wishlistController.update(); // Notify GetX that the state has changed
//               },
//             ),
//           ),
//           Expanded(
//             child: GetBuilder<WishlistController>(
//               builder: (controller) {
//                 return ListView.builder(
//                   itemCount: controller.productList.length,
//                   itemBuilder: (context, index) {
//                     if (controller.productList[index].isWished) {
//                       return Dismissible(
//                         key: Key(controller.productList[index].name),
//                         onDismissed: (direction) {
//                           wishlistController.removeFromWishlist(index);
//                         },
//                         direction: DismissDirection.endToStart,
//                         background: Container(
//                           alignment: Alignment.centerRight,
//                           color: Colors.red,
//                           child: Icon(
//                             Icons.delete,
//                             color: Colors.white,
//                           ),
//                         ),
//                         child: ListTile(
//                           title: Text(controller.productList[index].name),
//                           subtitle: Text('Added to wishlist'),
//                         ),
//                       );
//                     } else {
//                       return SizedBox.shrink(); // Hide non-wished items
//                     }
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
//
// class IfscController extends GetxController {
//   late TextEditingController ifscController;
//   var bank = ''.obs;
//   var branch = ''.obs;
//   var loading = false.obs;
//
//   // Future<void> fetchDeta(String ifsc) async {
//   //   final response = await http.get(Uri.parse('https://ifsc.razorpay.com/$ifsc'));
//
//   //   if(response.statusCode == 200){
//   //     final data = json.decode(response.body);
//   //     print(data);
//   //     bank = data['BANK'];
//   //     branch = data['BRANCH'];
//   //     update();
//   //   }else{
//   //     bank = 'Not found' as RxString;
//   //     branch = 'Not found' as RxString;
//   //     update();
//   //   }
//   // }
//
//
//   @override
//   void onInit() {
//     // Called immediately after the widget is allocated in memory
//     super.onInit();
//     ifscController = TextEditingController();
//   }
//
//   @override
//   void onClose() {
//     // Dispose of your controllers when the screen is closed
//     ifscController.dispose();
//     super.onClose();
//   }
// }

//
// Widget _buildSearchButton() {
//   return WCustomButton(
//     text: 'Search',
//     onPressed: () {
//       // Get.to(AccountNoScreen(
//       //   bankName: controller.fetchDeta(controller.ifscController.text),
//       //   ifscController: controller.ifscController,
//       // ))?.then((value) {
//       //   controller.fetchDeta(controller.ifscController.text);
//       // });
//     },
//   );
// }
