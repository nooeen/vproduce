import 'package:flutter/material.dart';

class VText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  final bool isBold;
  final bool isLeft;

  const VText(
      {Key? key,
      required this.text,
      required this.color,
      this.size = 16,
      this.isBold = false,
      this.isLeft = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLeft
        ? Text(
            text,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: 'GoogleSans',
                color: color,
                fontSize: size,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          )
        : Text(
            text,
            textAlign: TextAlign.right,
            style: TextStyle(
                fontFamily: 'GoogleSans',
                color: color,
                fontSize: size,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          );
  }
}
