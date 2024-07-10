import 'package:flutter/material.dart' show EdgeInsets, Expanded, Image, NeverScrollableScrollPhysics, Padding, SingleChildScrollView, SizedBox, Widget;

Widget pageNotFound(double sWidth, double sHeight) {
  return Expanded(
    child: SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: SizedBox(
        width: sWidth,
        height: sHeight * 0.6,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Image.asset("assets/images/404-not-found.png"),
        ),
      ),
    ),
  );
}
