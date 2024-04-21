import 'package:flutter/material.dart';
import 'home/screen/book_mark.dart';
import 'home/screen/favdeaital.dart';
import 'home/screen/home_screen.dart';
import 'home/screen/order_Placed.dart';
import 'home/screen/product_details.dart';
import 'home/screen/splash_screen.dart';
import 'home/screen/add_to_card.dart';
import 'package:flutter/services.dart';
import 'home/screen/user/login.dart';

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
