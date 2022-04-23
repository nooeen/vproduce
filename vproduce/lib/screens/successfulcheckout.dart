import 'package:flutter/material.dart';
import 'package:vproduce/widgets/vtext.dart';
import 'package:lottie/lottie.dart';

class SuccessfulCheckoutScreen extends StatelessWidget {
  const SuccessfulCheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const VText(
            text: "Thành công", color: Colors.black, size: 18, isBold: false),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Lottie.asset(
            'assets/success.json',
          ),
          const VText(
              text: "Giao dịch thành công",
              color: Colors.black,
              size: 18,
              isBold: false),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: VText(
                text: "Bấm vào nút dưới đây để theo dõi đơn hàng",
                color: Colors.grey,
                size: 16,
                isBold: false),
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
            Navigator.pushNamed(context, '/tracking');
          },
          child: const Padding(
            padding: EdgeInsets.all(14.0),
            child: VText(
                text: "Theo dõi đơn hàng",
                color: Colors.white,
                size: 18,
                isBold: true),
          ),
        ),
      ),
    );
  }
}
