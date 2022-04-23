import 'package:flutter/material.dart';
import 'package:vproduce/widgets/vtext.dart';
import 'package:vproduce/widgets/product.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFFFFFFF),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(image: AssetImage('assets/banner.png')),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: VText(
                        text: "Mua & Đấu giá",
                        color: Colors.white,
                        size: 28,
                        isBold: true),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(12, 45, 15, 0),
                    child: VText(
                        text: "nông sản",
                        color: Colors.white,
                        size: 32,
                        isBold: true),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/fixed');
                },
                child: const Product(
                    name: "Thanh long ruột đỏ",
                    price: 15000,
                    unit: "kg",
                    star: 4.5,
                    image: 'assets/thanhlong.png'),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/auction');
                },
                child: const Product(
                    name: "Vải thiều Lục Ngạn",
                    price: 45000,
                    unit: "kg",
                    star: 4.5,
                    image: 'assets/vaithieu.png',
                    offset: 135,
                    isAuction: true),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, '/product');
                },
                child: const Product(
                    name: "Cam sành Hà Giang",
                    price: 15000,
                    unit: "kg",
                    star: 4.5,
                    image: 'assets/cam.png',
                    offset: 128),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, '/product');
                },
                child: const Product(
                    name: "Quýt Bắc Kạn",
                    price: 15000,
                    unit: "kg",
                    star: 4.5,
                    image: 'assets/quyt.png',
                    offset: 190),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
