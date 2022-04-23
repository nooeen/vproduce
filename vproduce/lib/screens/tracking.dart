import 'package:flutter/material.dart';
import 'package:vproduce/widgets/vtext.dart';

class TrackingScreen extends StatelessWidget {
  const TrackingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const VText(
            text: "Theo dõi vận chuyển",
            color: Colors.black,
            size: 16,
            isBold: false),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 18, 8, 8),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                      fontFamily: 'GoogleSans',
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                  children: [
                    TextSpan(text: 'Trạng thái đơn hàng:  '),
                    TextSpan(
                        text: "Đang vận chuyển",
                        style: TextStyle(color: Color(0xff4FC526)))
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16.0)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xfff5f5f5),
                      border: Border.all(
                        color: const Color(0xfff5f5f5),
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  // color: const Color(0xfff5f5f5),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
                        child: Image(
                            image: AssetImage('assets/avatarthanhlong.png')),
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                              child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                      fontFamily: 'GoogleSans',
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal),
                                  children: [
                                    TextSpan(text: 'Vận chuyển từ '),
                                    TextSpan(
                                        text: "ngày 9 tháng 3 năm 2022",
                                        style:
                                            TextStyle(color: Color(0xff4FC526)))
                                  ],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: VText(
                                  text: "Vận chuyển tiêu chuẩn",
                                  color: Color(0xff4fc526),
                                  size: 13,
                                  isBold: false),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                      fontFamily: 'GoogleSans',
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                  children: [
                    TextSpan(text: 'Mã vận đơn:  '),
                    TextSpan(
                        text: "SPXVN02320695384",
                        style: TextStyle(color: Color(0xff4FC526)))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: VText(
                            text: "26 Th4\n7:00",
                            color: Colors.black,
                            size: 16,
                            isBold: false,
                            isLeft: false),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: VText(
                            text: "25 Th4\n7:00",
                            color: Colors.black,
                            size: 16,
                            isBold: false),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: VText(
                            text: "21 Th4\n7:00",
                            color: Colors.black,
                            size: 16,
                            isBold: false),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(image: AssetImage('assets/timeline.png')),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 4, 8),
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: VText(
                              text:
                                  "Giao hàng không thành công vì \nNgười nhận hẹn lại ngày giao",
                              color: Colors.black,
                              size: 16,
                              isBold: false,
                              isLeft: false),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20, left: 8),
                        child: VText(
                            text: "Đang giao hàng",
                            color: Colors.black,
                            size: 16,
                            isBold: false),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 12, 8, 8),
                        child: VText(
                            text: "Đơn hàng đã đến kho HN SOC",
                            color: Colors.black,
                            size: 16,
                            isBold: false),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
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
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
          },
          child: const Padding(
            padding: EdgeInsets.all(14.0),
            child: VText(
                text: "Quay về trang chủ",
                color: Colors.white,
                size: 18,
                isBold: true),
          ),
        ),
      ),
    );
  }
}
