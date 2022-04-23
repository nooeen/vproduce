import 'package:flutter/material.dart';
import 'package:vproduce/widgets/vtext.dart';
import 'package:http/http.dart' as http;

class AuctionOrderScreen extends StatelessWidget {
  const AuctionOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const VText(
            text: "Đặt cọc", color: Colors.black, size: 18, isBold: false),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Image(
                      image: AssetImage('assets/vaithieu1.png'), height: 100),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        VText(
                            text: "Vải thiều Lục Ngạn",
                            color: Colors.black,
                            size: 18,
                            isBold: true),
                        VText(
                            text: "Hoa quả",
                            color: Colors.grey,
                            size: 16,
                            isBold: false),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: VText(
                              text: "Số lượng: 20Kg",
                              color: Colors.black,
                              size: 12,
                              isBold: false),
                        ),
                      ],
                    ),
                  ),
                ]),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(18, 8, 8, 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff2bc61d)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: const BorderSide(color: Color(0xff2BC61D))))),
            onPressed: () {
              Navigator.pushNamed(context, '/checkout/auction');
            },
            child: const Padding(
              padding: EdgeInsets.all(14.0),
              child: VText(
                  text: "Đặt cọc", color: Colors.white, size: 18, isBold: true),
            ),
          ),
        ]),
      ),
    );
  }
}
