import 'package:flutter/material.dart';
import 'package:vproduce/widgets/vtext.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/vaithieu1.png',
  'assets/vaithieu2.jpg',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(3.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.asset(item, fit: BoxFit.fill, width: 2000.0),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 20.0),
                    ),
                  ),
                ],
              )),
        ))
    .toList();

class AuctionProductScreen extends StatelessWidget {
  const AuctionProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const VText(
            text: "Sản phẩm", color: Colors.black, size: 18, isBold: false),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 250,
            child: CarouselSlider(
              options: CarouselOptions(
                height: 300,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
              ),
              items: imageSliders,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Row(
              children: const [
                VText(
                    text: "Vải thiều Lục Ngạn",
                    color: Colors.black,
                    size: 26,
                    isBold: true),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Image(image: AssetImage('assets/verified.png')),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 4, 0, 0),
            child: Row(
              children: const [
                VText(
                    text: "Vải, vải thiều",
                    color: Colors.grey,
                    size: 18,
                    isBold: false),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 4, 0, 0),
            child: Row(
              children: const [
                VText(
                    text: "10000 - 23000đ / 1Kg",
                    color: Color(0xff2BC61D),
                    size: 18,
                    isBold: true),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xfff5f5f5),
                    border: Border.all(
                      color: Color(0xfff5f5f5),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                // color: const Color(0xfff5f5f5),
                child: Row(
                  children: const [
                    Image(image: AssetImage('assets/avatarthanhlong.png')),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
