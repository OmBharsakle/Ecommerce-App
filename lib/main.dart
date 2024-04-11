import 'package:flutter/material.dart';
import 'home/screen/app_bar.dart';
void main() {
  runApp(EcommerceApp());
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
      home: Scaffold(
        appBar: MyAppBar(),
        body: MyAppBar(),
      ),
    );
  }
}

