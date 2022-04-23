import 'package:flutter/material.dart';
import 'package:vproduce/widgets/vtext.dart';

class FixedCheckoutScreen extends StatelessWidget {
  const FixedCheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const VText(
            text: "Thanh toán", color: Colors.black, size: 16, isBold: false),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.pin_drop),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        VText(
                            text: "Địa chỉ nhận hàng",
                            color: Colors.black,
                            size: 16,
                            isBold: false),
                        SizedBox(height: 10),
                        VText(
                            text: "Nguyễn Duy Ngọc | (+84) 123 456 789",
                            color: Colors.black,
                            size: 16,
                            isBold: false),
                        SizedBox(height: 10),
                        VText(
                            text: "114 Xuân Thuỷ, Cầu Giấy, Hà Nội",
                            color: Colors.black,
                            size: 16,
                            isBold: false),
                      ]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 25, 10, 220),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.store_outlined),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const VText(
                            text: "Vườn cam của Thái",
                            color: Colors.black,
                            size: 16,
                            isBold: false),
                        const SizedBox(height: 10),
                        const VText(
                            text: "Cam Cao Phong chất lượng cao",
                            color: Colors.black,
                            size: 16,
                            isBold: false),
                        const SizedBox(height: 10),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                                fontFamily: 'GoogleSans',
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                            children: [
                              TextSpan(text: 'Trạng thái đơn hàng:  '),
                              TextSpan(
                                  text: "Đang vận chuyển",
                                  style: TextStyle(color: Color(0xff4FC526)))
                            ],
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      VText(
                          text: "Phương thức vận chuyển",
                          color: Colors.black,
                          size: 16,
                          isBold: false),
                      VText(
                          text: "Viettel Post",
                          color: Colors.black,
                          size: 14,
                          isBold: false),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      VText(
                          text: "Giao hàng nhanh",
                          color: Colors.black,
                          size: 14,
                          isBold: false),
                      VText(
                          text: "10000đ",
                          color: Color(0xff2bc61d),
                          size: 12,
                          isBold: false),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      VText(
                          text: "Nhận hàng vào 24/04 - 25/04",
                          color: Colors.black,
                          size: 14,
                          isBold: false),
                    ]),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      VText(
                          text: "Phương thức thanh toán",
                          color: Colors.black,
                          size: 16,
                          isBold: false),
                      VText(
                          text: "VISA / MasterCard",
                          color: Colors.black,
                          size: 14,
                          isBold: false),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      VText(
                          text: "Tổng tiền hàng",
                          color: Colors.black,
                          size: 14,
                          isBold: false),
                      VText(
                          text: "60000đ",
                          color: Colors.black,
                          size: 12,
                          isBold: false),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      VText(
                          text: "Tổng phí vận chuyển",
                          color: Colors.black,
                          size: 14,
                          isBold: false),
                      VText(
                          text: "10000đ",
                          color: Colors.black,
                          size: 12,
                          isBold: false),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      VText(
                          text: "Tổng thanh toán",
                          color: Colors.black,
                          size: 14,
                          isBold: false),
                      VText(
                          text: "70000đ",
                          color: Color(0xff2bc61d),
                          size: 12,
                          isBold: false),
                    ]),
              ),
            ],
          ),
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
              Navigator.pushNamed(context, '/checkout/successful');
            },
            child: const Padding(
              padding: EdgeInsets.all(14.0),
              child: VText(
                  text: "Mua ngay",
                  color: Colors.white,
                  size: 18,
                  isBold: true),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18),
            child: VText(
                text: "Tổng thanh toán \n70000đ",
                color: Colors.black,
                size: 18,
                isBold: false,
                isLeft: false),
          ),
        ]),
      ),
    );
  }
}
