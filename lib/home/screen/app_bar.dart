import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget MyAppBar()
{
  return Column(
    children: [
      Row(
        children: [
          Text('PixelsCo.'),
          Icon(Icons.shopping_bag),
        ],
      ),
    ],
  );
}