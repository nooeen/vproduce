import 'package:flutter/material.dart';
import 'package:vproduce/widgets/vtext.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/thanhlong1.png',
  'assets/thanhlong2.jpg',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(3.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.asset(item, fit: BoxFit.fill, width: 1500.0),
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

class FixedProductScreen extends StatelessWidget {
  const FixedProductScreen({Key? key}) : super(key: key);

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
            height: 220,
            child: CarouselSlider(
              options: CarouselOptions(
                height: 250,
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
                    text: "Thanh long ruột đỏ",
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
                    text: "Trái cây",
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
                    text: "15000đ / 1Kg",
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
                    color: const Color(0xfff5f5f5),
                    border: Border.all(
                      color: const Color(0xfff5f5f5),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                // color: const Color(0xfff5f5f5),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
                      child: Image(
                          image: AssetImage('assets/avatarthanhlong.png')),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          VText(
                              text: "Thanh Long Chúa",
                              color: Colors.black,
                              size: 16,
                              isBold: true),
                          VText(
                              text: "Trực tuyến 20 phút trước",
                              color: Colors.grey,
                              size: 12,
                              isBold: false),
                        ]),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(116, 0, 0, 0),
                      child: Icon(Icons.message_outlined),
                    )
                  ],
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xfff5f5f5),
                    border: Border.all(
                      color: const Color(0xfff5f5f5),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: VText(
                                  text: "Chi tiết sản phẩm",
                                  color: Colors.black,
                                  size: 16,
                                  isBold: true),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: VText(
                                  text: "Kho: 1000Kg",
                                  color: Colors.grey,
                                  size: 12,
                                  isBold: false),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: VText(
                                  text: "Gửi từ: TP Hà Nội",
                                  color: Colors.grey,
                                  size: 12,
                                  isBold: false),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: VText(
                                  text:
                                      "Thanh long của thanh long chúa sẽ không bao giờ từ bỏ \nbạn, sẽ  không bao giờ làm bạn thất vọng, sẽ không bao giờ \nchạy loanh quanh bỏ và bỏ rơi bạn.... ",
                                  color: Colors.grey,
                                  size: 12,
                                  isBold: false),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 30),
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xff2bc61d)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: const BorderSide(color: Color(0xff2BC61D))))),
          onPressed: () {
            Navigator.pushNamed(context, '/checkout/fixed');
          },
          child: const Padding(
            padding: EdgeInsets.all(14.0),
            child: VText(
                text: "Mua ngay", color: Colors.white, size: 18, isBold: true),
          ),
        ),
      ),
    );
  }
}
