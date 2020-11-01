

import 'package:flutter/material.dart';

class GangListImage extends StatelessWidget {
  String imageUrl;


  GangListImage(String imageUrl) {
    this.imageUrl = imageUrl;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
          DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.fill)),
    );
  }

}