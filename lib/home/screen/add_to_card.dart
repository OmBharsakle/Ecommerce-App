import 'package:ecommerce_app/home/screen/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;

import '../components/product_list.dart';
import 'extra.dart';
import 'home_screen.dart';

class Add_To_Card extends StatefulWidget {
  const Add_To_Card({super.key});

  @override
  State<Add_To_Card> createState() => _Add_To_CardState();
}

class _Add_To_CardState extends State<Add_To_Card> {
  @override
  Widget build(BuildContext context) {
    int total = 0;
    int SubTotal() {
      setState(() {
        for (int i = 0; i < AddToCard.length; i++) {
          int sum = AddToCard[i]['price'] * AddToCard[i]['quantity'];
          total += sum;
        }
      });
      return total;
    }

    var iteamtotal = SubTotal();
    var discount = iteamtotal * 20 / 100;
    var subtotal = SubTotal() - discount + 60;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient:
                RadialGradient(center: Alignment.topLeft, radius: 1, colors: [
          Color(0xff32343b),
          Color(0xff1c1e22),
        ])),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Card Box
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        width: double.infinity,
                        height: 80,
                        color: Colors.transparent,
                        child: Row(
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
                              'Card Details',
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
                                Navigator.of(context).pushNamed('/fav');
                              },
                              child: badges.Badge(
                                badgeContent: Text(
                                  '${likedProductList.length}',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 14,
                                    letterSpacing: 1,
                                  )),
                                ),
                                child: Icon(
                                  Icons.bookmark_add_outlined,
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
                        children: List.generate(
                          AddToCard.length,
                          (index) => Add_To_Card_Product(index),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Total Value Count
            Container(
              width: double.infinity,
              height: 280,
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Colors.white38, width: 1),
                    left: BorderSide(color: Colors.white38, width: 1),
                    right: BorderSide(color: Colors.white38, width: 1)),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
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
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Price Details',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 22,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Price (${AddToCard.length} Items)',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white60,
                              fontSize: 15,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                        Text(
                          '\$$iteamtotal',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white60,
                              fontSize: 17,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discount',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white60,
                              fontSize: 15,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                        Text(
                          '-\$$discount',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white60,
                              fontSize: 17,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Charges',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white60,
                              fontSize: 15,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                        Text(
                          '+\$60',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white60,
                              fontSize: 17,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Amount',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white70,
                              fontSize: 18,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                        Text(
                          '\$${subtotal}',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white70,
                              fontSize: 19,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            if (AddToCard.length > 0) {
                              Navigator.of(context).pushNamed('/order');
                            } else {
                              showCustomToast(
                                  context,
                                  Icons.warning_amber_rounded,
                                  'Add At Least One Product');
                            }
                          },
                          child: Container(
                            width: 365,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(color: Colors.white38, width: 1),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff32343b),
                                  Color(0xff1c1e22),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Place Order',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 19,
                                    letterSpacing: 2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
        border: Border.all(color: Colors.white38, width: 1),
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
                        image: AssetImage(AddToCard[index]['link']),
                        fit: BoxFit.contain))),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AddToCard[index]['name'],
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'cashDisplay',
                      color: Colors.white,
                      fontSize: 18,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    '\$${AddToCard[index]['price']}',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 18,
                      letterSpacing: 1,
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            AddToCard[index]['quantity']++;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 13),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white38, width: 1),
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
                            size: 20,
                          ),
                        ),
                      ),
                      Text(
                        '${AddToCard[index]['quantity']}',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 20,
                          letterSpacing: 1,
                        )),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (1 < AddToCard[index]['quantity']) {
                              AddToCard[index]['quantity']--;
                            }
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 13),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white38, width: 1),
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
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            AddToCard[index]["check"] = true;
                            AddToCard[index]['quantity'] = productquantity = 1;
                            AddToCard.removeAt(index);
                          });
                        },
                        child: Icon(
                          Icons.delete_forever_rounded,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
