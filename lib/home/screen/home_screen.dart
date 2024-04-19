import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;
import '../components/product_list.dart';
import 'add_to_card.dart';
import 'extra.dart';
import 'favdeaital.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int badgescount = AddToCard.length;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient:
                RadialGradient(center: Alignment.topLeft, radius: 0.8, colors: [
          Color(0xff484C57),
          Color(0xff1F2125),
        ])),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // App Bar Code
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: double.infinity,
                  height: 80,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'PixelsCo.',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              letterSpacing: 2,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 11),
                        child: InkWell(
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
                      ),
                    ],
                  ),
                ),
                // Search Section
                Container(
                  child: TextField(
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    decoration: InputDecoration(
                      hintText: 'Serach Your Product',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 25,
                      ),
                      suffixIcon: Icon(
                        Icons.highlight_remove,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Hero Container
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.white38, width: 1),
                      gradient: LinearGradient(colors: [
                        Color(0xff484C57),
                        Color(0xff1D1F23),
                        Color(0xff1D1F23),
                      ])),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "New Vintage\nCollection",
                              // textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 20,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/try');
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 25),
                                width: 120,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  border: Border.all(
                                      color: Colors.white38, width: 1),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff32343b),
                                      Color(0xff1c1e22),
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Explore Now',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 165,
                          height: 160,
                          decoration: BoxDecoration(
                              // color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage('assets/image/02.png'),
                                  fit: BoxFit.contain))),
                      // Image.asset(
                      //   'assets/image/02.png',
                      // ),
                    ],
                  ),
                ),
                // Divider(
                //   height: 40,
                //   color: Colors.white38,
                //   thickness: 1,
                // ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Popular',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 25,
                    letterSpacing: 2,
                  )),
                ),
                // SizedBox(height: 15,),
                Divider(
                  height: 35,
                  color: Colors.white38,
                  thickness: 1,
                ),
                Center(
                  child: Wrap(
                    spacing: 15,
                    runSpacing: 15,
                    children: List.generate(
                        6,
                        (index) => InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.of(context)
                                    .pushNamed('/product', arguments: index);
                              });
                            },
                            child: ProductContainer(index))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container ProductContainer(int index) {
    return Container(
      width: 175,
      height: 290,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white38, width: 1),
        gradient: RadialGradient(
          center: Alignment.topRight,
          radius: 1.5,
          colors: [
            Color(0xff32343b),
            Color(0xff1c1e22),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star_outlined,
                      color: Colors.yellow,
                      size: 18,
                    ),
                  ],
                ),
                Text(
                  ' 4.5',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 12,
                  )),
                ),
                SizedBox(
                  width: 89,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      BookMark[index] = !BookMark[index];
                      if (BookMark[index]) {
                        // BookMarked.add(index);
                        showCustomToast(context, Icons.favorite_outlined, 'Product Added Successfully');
                        BookMarked.add(ProductData[index]);
                      } else {
                        BookMarked.remove(index);
                        BookMarked.remove(index);
                        showCustomToast(context, Icons.favorite_border, 'Product Remove Successfully');
                      }
                    });
                  },
                  child: BookMark[index] ? Fav1() : Fav(),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 155,
                height: 125,
                decoration: BoxDecoration(
                    // color: Colors.white,

                    image: DecorationImage(
                        image: AssetImage(ProductData[index]['link']),
                        fit: BoxFit.scaleDown))),
            SizedBox(
              height: 5,
            ),
            Text(
              ProductData[index]['name'],
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 14,
                letterSpacing: 1.5,
              )),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '\$${ProductData[index]['price']}',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 15,
                letterSpacing: 1,
              )),
            ),
            SizedBox(
              height: 11,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (ProductData[index]["check"]) {
                      ProductData[index]["check"] = false;
                      AddToCard.add(ProductData[index]);
                      showCustomToast(context, Icons.shopping_cart_outlined,
                          'Product Added Successfully');
                    } else {
                      showCustomToast(context, Icons.shopping_cart_outlined,
                          'Product All Ready Added');
                    }
                  });
                },
                child: Container(
                  width: 150,
                  height: 45,
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
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Add To Cart',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 13,
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
    );
  }

  Icon Fav() {
    return Icon(
      Icons.favorite_border,
      color: Colors.red,
      size: 22,
    );
  }

  Icon Fav1() {
    return Icon(
      Icons.favorite,
      color: Colors.red,
      size: 22,
    );
  }
}

// bool check=true;
bool isfav = false;

int? index1;

int quantity = 1;
