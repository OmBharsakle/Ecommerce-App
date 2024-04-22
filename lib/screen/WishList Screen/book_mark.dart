// import 'package:ecommerce_app/home/screen/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;
import '../../utils/extra.dart';
import '../../utils/product_list.dart';
import '../Home Screen/home_screen.dart';


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
        decoration: const BoxDecoration(
            gradient:
            RadialGradient(center: Alignment.topLeft, radius: 1,colors: [
              Color(0xff32343b),
              Color(0xff1c1e22),
            ])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  // Card Bar
                  Container(
                    margin: const EdgeInsets.only(top: 35),
                    width: double.infinity,
                    height: 80,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(onTap: () {
                          Navigator.of(context).pop();
                        },
                          child: const Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        Text(
                          'WishList',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 22,
                                letterSpacing: 3,
                                color: Colors.white),
                          ),
                        ),
                         InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).pushNamed('/home');
                              });
                            },
                            child: const Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                      ],
                    ),
                  ),
                  // Add Card Container
                  Column(
                    children: List.generate(likedProductList.length, (index) => Liked_Product(index),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container Liked_Product(int index) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white38, width: 2),
        gradient: const RadialGradient(
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
                        AssetImage(ProductData[likedProductList[index]]['link']),
                        fit: BoxFit.contain))
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(ProductData[likedProductList[index]]['name'],style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'cashDisplay',
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 1,
                  ),),
                  const SizedBox(height: 7,),
                  Text(
                    '\$${ProductData[likedProductList[index]]['price']}' ,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 18,
                          letterSpacing: 1,
                        )),
                  ),
                  const SizedBox(height: 10,),
                 Row(
                   children: [
                     Container(
                       width: 130,
                       height: 40,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         border: Border.all(color: Colors.white38, width: 2),
                         gradient: const LinearGradient(
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
                               const SizedBox(
                                 width: 15,
                               ),
                               const Icon(
                                 Icons.shopping_bag_outlined,
                                 color: Colors.white,
                                 size: 20,
                               ),
                               const SizedBox(
                                 width: 8,
                               ),
                               Text(
                                 'Add To Cart',
                                 style: GoogleFonts.poppins(
                                   textStyle: const TextStyle(
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
                     SizedBox(width: 50,),
                     InkWell(
                       onTap: () {
                         setState(() {
                           Navigator.of(context)
                               .pushNamed('/favPage', arguments: likedProductList[index]);
                         });
                       },
                       child: const Icon(
                         Icons.arrow_forward_rounded,
                         color: Colors.white,
                         size: 30,
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
  Icon Fav() {
    return const Icon(
      Icons.favorite_border,
      color: Colors.red,
      size: 22,
    );
  }

  Icon Fav1() {
    return const Icon(
      Icons.favorite,
      color: Colors.red,
      size: 22,
    );
  }
}
