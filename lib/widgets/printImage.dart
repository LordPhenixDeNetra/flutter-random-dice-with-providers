// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PrintImage extends StatelessWidget {
  final imageUrl;

  PrintImage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    // var randomizImage = Provider.of<DeProvider>(context, listen: false);
    // TODO: implement build
    return Image.asset(imageUrl, width: 200, height: 200);
  }

  // "images/${deProvider.randomImageLeft}.png"
}
