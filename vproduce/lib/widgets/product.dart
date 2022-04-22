import 'package:flutter/material.dart';
import 'package:vproduce/widgets/vtext.dart';

class Product extends StatelessWidget {
  final String name;
  final int price;
  final String unit;
  final double star;
  final String image;
  final double offset;

  const Product(
      {Key? key,
      required this.name,
      required this.price,
      required this.unit,
      required this.star,
      required this.image,
      this.offset = 133})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String info = price.toString() + "đ /1" + unit;

    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(image: AssetImage(image)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(offset, 12, 12, 12),
          child: VText(
              text: name,
              color: Colors.white,
              size: 24,
              isBold: true,
              isLeft: true),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(248, 40, 12, 12),
          child: VText(
              text: info,
              color: const Color(0xff95FF71),
              size: 18,
              isBold: false),
        ),
      ],
    );
  }
}
