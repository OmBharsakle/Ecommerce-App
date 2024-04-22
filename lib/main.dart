import 'package:ecommerce_app/screen/Card%20Screen/add_to_card.dart';
import 'package:ecommerce_app/screen/Home%20Screen/home_screen.dart';
import 'package:ecommerce_app/screen/Order%20Placed%20Screen/order_Placed.dart';
import 'package:ecommerce_app/screen/Product%20Details%20Screen/product_details.dart';
import 'package:ecommerce_app/screen/Splash%20Screen/splash_screen.dart';
import 'package:ecommerce_app/screen/WishList%20Screen/book_mark.dart';
import 'package:ecommerce_app/screen/WishList%20Screen/favdeaital.dart';
import 'package:ecommerce_app/user/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light
      )
  );
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatefulWidget {
  const EcommerceApp({super.key});
  @override
  State<EcommerceApp> createState() => _EcommerceAppState();
}

class _EcommerceAppState extends State<EcommerceApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const Splash_Screen(),
        '/login' : (context) => const LoginScreen(),
        '/home' : (context) => const Home_Screen(),
        '/product' : (context) => const Products_details_Page(),
        '/card' : (context) => const Add_To_Card(),
        '/fav' : (context) => const Book_Mark(),
        '/order' : (context) => const Order_Placed(),
        '/favPage' : (context) => const Fav_Page(),
      },
    );
  }
}
