import 'package:flutter/material.dart';
import 'home/components/product_list.dart';
import 'home/screen/book_mark.dart';
import 'home/screen/extra.dart';
import 'home/screen/favdeaital.dart';
import 'home/screen/home_screen.dart';
import 'home/screen/product_details.dart';
import 'home/screen/splash_screen.dart';
import 'home/screen/add_to_card.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
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
        '/' : (context) => Splash_Screen(),
        '/home' : (context) => Home_Screen(),
        '/product' : (context) => Products_details_Page(),
        '/card' : (context) => Add_To_Card(),
        '/fav' : (context) => Book_Mark(),
        '/try' : (context) => Try(),
        '/favpage' : (context) => Fav_Page(),
      },
    );
  }
}
