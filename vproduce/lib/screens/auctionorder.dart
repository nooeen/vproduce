import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vproduce/widgets/vtext.dart';
import 'package:http/http.dart' as http;
import 'package:vproduce/utils/bid.dart';
import 'dart:async';
import 'dart:convert';

Future<List<Bid>> fetchBids(http.Client client) async {
  final response =
      await client.get(Uri.parse('http://3.95.25.81:3000/auction/listBid'));

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parseBids, response.body);
}

// A function that converts a response body into a List<Photo>.
List<Bid> parseBids(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Bid>((json) => Bid.fromJson(json)).toList();
}

class AuctionOrderScreen extends StatefulWidget {
  const AuctionOrderScreen({Key? key}) : super(key: key);

  @override
  State<AuctionOrderScreen> createState() => _AuctionOrderScreenState();
}

class _AuctionOrderScreenState extends State<AuctionOrderScreen> {
  late Future<List<Bid>> futureBid;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    http.Client client = http.Client();
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: VText(
                text: "Danh sách", color: Colors.black, size: 24, isBold: true),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 12, 0),
            child: Row(
              children: const [
                VText(
                    text: "Số lượng (kg)",
                    color: Colors.black,
                    size: 16,
                    isBold: false),
                Padding(
                  padding: EdgeInsets.only(left: 64),
                  child: VText(
                      text: "Giá đặt (VND/kg)",
                      color: Colors.black,
                      size: 16,
                      isBold: false),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Divider(
              height: 15,
              thickness: 1,
              indent: 20,
              endIndent: 0,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(64, 0, 8, 8),
            child: SizedBox(
              height: 200,
              child: FutureBuilder<List<Bid>>(
                future: fetchBids(http.Client()),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Center(
                      child: Text('An error has occurred!'),
                    );
                  } else if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: VText(
                                  text: snapshot.data![index].volume.toString(),
                                  color: Colors.black,
                                  size: 18,
                                  isBold: false),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(155, 8, 8, 8),
                              child: VText(
                                  text: snapshot.data![index].price + '000',
                                  color: Colors.black,
                                  size: 18,
                                  isBold: false),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Divider(
              height: 15,
              thickness: 1,
              indent: 20,
              endIndent: 0,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 24, 12, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                VText(
                    text: 'Số lượng còn lại: ',
                    color: Colors.black,
                    size: 16,
                    isBold: false),
                Padding(
                  padding: EdgeInsets.only(left: 180.0),
                  child: VText(
                      text: '13kg',
                      color: Colors.black,
                      size: 16,
                      isBold: false),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 12, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                VText(
                    text: 'Tổng giá trị hiện tại: ',
                    color: Colors.black,
                    size: 16,
                    isBold: false),
                Padding(
                  padding: EdgeInsets.only(left: 100.0),
                  child: VText(
                      text: '225.000VNĐ',
                      color: Colors.black,
                      size: 16,
                      isBold: false),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 12, 12, 0),
            child: VText(
                text: 'Trả giá', color: Colors.black, size: 24, isBold: true),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 8, top: 8),
            child: Row(
              children: const [
                VText(
                    text: 'Số lượng (kg)',
                    color: Colors.black,
                    size: 16,
                    isBold: false),
                Padding(
                  padding: EdgeInsets.only(left: 205.0),
                  child: VText(
                      text: '13kg',
                      color: Colors.black,
                      size: 16,
                      isBold: false),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 8),
            child: Row(
              children: const [
                VText(
                    text: 'Đơn giá (VND/kg)',
                    color: Colors.black,
                    size: 16,
                    isBold: false),
                Padding(
                  padding: EdgeInsets.only(left: 118.0),
                  child: VText(
                      text: '200.000VNĐ',
                      color: Colors.black,
                      size: 16,
                      isBold: false),
                ),
              ],
            ),
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
            onPressed: () async {
              await client
                  .post(Uri.parse('http://3.95.25.81:3000/auction/createBid'));
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
