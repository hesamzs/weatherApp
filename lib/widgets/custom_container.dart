import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.width,
    required this.height,
    required this.border,
    required this.child,
  });

  final double width;
  final double height;
  final double border;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xff1D1D43),
            Color(0xff32325A),
          ],
        ),
        borderRadius: BorderRadius.circular(border),
        boxShadow: const [
          BoxShadow(
            color: Color(0xff020234),
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(4, 4),
          ),
          BoxShadow(
            color: Colors.black,
            blurRadius: 6,
            spreadRadius: -8,
            offset: Offset(-3, -3),
          ),
        ],
      ),
      height: height,
      width: width,
      child: child,
    );
  }
}
