import 'package:ecommerce_app/utils/product_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;

import '../../utils/extra.dart';
import '../Home Screen/home_screen.dart';

class Fav_Page extends StatefulWidget {
  const Fav_Page({super.key});

  @override
  State<Fav_Page> createState() => _Fav_PageState();
}

class _Fav_PageState extends State<Fav_Page> {
  @override
  Widget build(BuildContext context) {
    var index = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient:
          RadialGradient(center: Alignment.topRight, radius: 1, colors: [
            Color(0xff32343b),
            Color(0xff1c1e22),
          ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                margin: EdgeInsets.only(top: 35),
                width: double.infinity,
                height: 80,
                color: Colors.transparent,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context, 'fine');
                      },
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    Text(
                      'Product Details',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                            letterSpacing: 2,
                            color: Colors.white),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/card');
                      },
                      child: badges.Badge(
                        badgeContent: Text(
                          '${AddToCard.length}',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 14,
                                letterSpacing: 1,
                              )),
                        ),
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 300,
                margin: EdgeInsets.only(bottom: 50),
                decoration: BoxDecoration(
                  // color: Colors.white,
                    image: DecorationImage(
                        alignment: Alignment.center,
                        image: AssetImage(ProductData[index]['link']),
                        fit: BoxFit.contain)),
              ),
            ),
            // SizedBox(height: 100,),
            Container(
              width: 410,
              height: 435,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.white38, width: 3),
                      left: BorderSide(color: Colors.white38, width: 3),
                      right: BorderSide(color: Colors.white38, width: 3)),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  gradient: RadialGradient(
                      center: Alignment.topRight,
                      radius: 1,
                      colors: [
                        Color(0xff32343b),
                        Color(0xff1c1e22),
                      ])),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(ProductData[index]['name'],
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'cashDisplay',
                          color: Colors.white,
                          fontSize: 20,
                          letterSpacing: 3,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${ProductData[index]['price']}',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 22,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  ProductData[index]['quantity']++;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white38, width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xff555861),
                                          Colors.black38,
                                        ])),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 26,
                                ),
                              ),
                            ),
                            Text(
                              '${ProductData[index]['quantity']}',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 22,
                                    letterSpacing: 1,
                                  )),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (1 < AddToCard[index]['quantity']) {
                                    ProductData[index]['quantity']--;
                                  }
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white38, width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xff555861),
                                          Colors.black38,
                                        ])),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                  size: 26,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Icon(
                          Icons.star_outlined,
                          color: Colors.yellow,
                          size: 28,
                        ),
                        Text(
                          ' 4.5',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18,
                              )),
                        ),
                        Text(
                          ' (500 reviews)',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white38,
                                fontSize: 15,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      ProductData[index]['description'],
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            // overflow: TextOverflow.clip,
                              fontWeight: FontWeight.w500,
                              color: Colors.white54,
                              fontSize: 15,
                              letterSpacing: 1)),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              UnLikedList[index] = !UnLikedList[index];
                              if(UnLikedList[index])
                              {
                                likedProductList.add(index);
                                showCustomToast(context, Icons.favorite_rounded,
                                    'Product Added Successfully');
                              }
                              else
                              {
                                likedProductList.remove(index);
                                showCustomToast(context, Icons.favorite_border_rounded,
                                    'Product UnLiked Successfully');
                              }
                            });
                          },
                          child: Container(
                            width: 70,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border:
                              Border.all(color: Colors.white38, width: 2),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff32343b),
                                  Color(0xff1c1e22),
                                ],
                              ),
                            ),
                            child: check?(UnLikedList[index] ? Fav1() : Fav()):(UnLikedList[index] ? Fav1() : Fav()),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
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
                            width: 270,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border:
                              Border.all(color: Colors.white38, width: 2),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff32343b),
                                  Color(0xff1c1e22),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text('Add To Bag',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'cashDisplay',
                                    color: Colors.white,
                                    fontSize: 20,
                                    letterSpacing: 1,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // main
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Icon Fav() {
    return const Icon(
      Icons.bookmark_add_outlined,
      color: Colors.white,
      size: 28,
    );
  }

  Icon Fav1() {
    return const Icon(
      Icons.bookmark_remove_outlined,
      color: Colors.white,
      size: 28,
    );
  }
}

int productquantity = 1;
bool check=false;