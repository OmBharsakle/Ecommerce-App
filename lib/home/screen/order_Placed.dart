import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Order_Placed extends StatefulWidget {
  const Order_Placed({super.key});
  @override
  State<Order_Placed> createState() => _Order_PlacedState();
}

class _Order_PlacedState extends State<Order_Placed> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  gradient:
                  RadialGradient(center: Alignment.topLeft, radius: 1,colors: [
                    Color(0xff32343b),
                    Color(0xff1c1e22),
                  ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 100,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Order Placed Successfully!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Your order has been placed successfully.',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Get delivery by Mon, 06 Feb- Thu, 09 Feb',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Track My Order',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(onTap: () => Navigator.of(context).pushNamed('/home'),
                    child: Container(
                      width: 65,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.white38, width: 1),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff32343b),
                            Color(0xff1c1e22),
                          ],
                        ),
                      ),
                      child:
                          Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.white,
                            size: 25,
                          ),
                      ),
                  )
                ],
              ),
            )
        ) );
  }
}

