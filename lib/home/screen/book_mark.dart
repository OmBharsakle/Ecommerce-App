import 'package:ecommerce_app/home/screen/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;
import 'extra.dart';
import 'home/screen/home_screen.dart';

import '../components/product_list.dart';
import 'home_screen.dart';


class Book_Mark extends StatefulWidget {
  const Book_Mark({super.key});

  @override
  State<Book_Mark> createState() => _Book_MarkState();
}

class _Book_MarkState extends State<Book_Mark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient:
            RadialGradient(center: Alignment.topLeft, radius: 1,colors: [
              Color(0xff32343b),
              Color(0xff1c1e22),
            ])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Card Bar
                    Container(
                      margin: EdgeInsets.only(top: 35),
                      width: double.infinity,
                      height: 80,
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(onTap: () {
                            Navigator.of(context).pop();
                          },
                            child: Icon(
                              Icons.arrow_back_ios_rounded,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                          Text(
                            'Book Mark Products',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  letterSpacing: 2,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 11),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  Navigator.of(context).pushNamed('/home');
                                });
                              },
                              child: Icon(
                                Icons.home_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    // Add Card Container
                    Column(
                      children: List.generate(BookMark.length, (index) => Add_To_Card_Product(index),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container Add_To_Card_Product(int index) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white38, width: 2),
        gradient: RadialGradient(
          center: Alignment.topLeft,
          radius: 1,
          colors: [
            Color(0xff32343b),
            Color(0xff1c1e22),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Container(
                width: 110,
                height: 130,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                        AssetImage(ProductData[BookMarked[index]]['link']),
                        fit: BoxFit.contain))
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(ProductData[BookMarked[index]]['name'],style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'cashDisplay',
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 1,
                  ),),
                  SizedBox(height: 7,),
                  Text(
                    '\$${ProductData[BookMarked[index]]['price']}' ,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 18,
                          letterSpacing: 1,
                        )),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 130,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white38, width: 2),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff32343b),
                          Color(0xff1c1e22),
                        ],
                      ),
                    ),
                    child: InkWell(onTap: () {
                      setState(() {
                        if (ProductData[index]["check"]) {
                          ProductData[index]["check"]=false;
                          AddToCard.add(ProductData[index]);
                          showCustomToast(context,Icons.shopping_cart_outlined,'Product Added Successfully');
                        }
                        else{
                          showCustomToast(context,Icons.shopping_cart_outlined,'Product All Ready Added');
                        }
                      });
                    },
                      child: Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Add To Cart',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40),
              width: 20,
              height: 200,
              // color: Colors.black38,
              child: Column(
                children: [
                  InkWell(onTap: () {
                    setState(() {
                      isfav=false;
                      BookMark.removeAt(index);
                      // badgescount--;
                    });
                  },
                    child: Icon(
                      Icons.bookmark_remove_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(height: 50,),
                  InkWell(onTap: () {
                    setState(() {
                      isfav=false;
                      BookMark.removeAt(index);
                      // badgescount--;
                    });
                  },
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          var myfavindex=index;
                          print(myfavindex);
                          Navigator.of(context)
                              .pushNamed('/favpage', arguments: index);
                        });
                      },
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
