import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget MyAppBar()
{
  return Container(
    width: double.infinity,
    height: 90,
    child: Column(
      children: [
        Row(
          children: [
            Text('PixelsCo.'),
            Icon(Icons.shopping_bag),
          ],
        ),
      ],
    ),
  );
}