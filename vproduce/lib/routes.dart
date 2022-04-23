import 'package:vproduce/screens/home.dart';
import 'package:vproduce/screens/auctionproduct.dart';
import 'package:vproduce/screens/fixedproduct.dart';
import 'package:vproduce/screens/tracking.dart';
import 'package:vproduce/screens/fixedcheckout.dart';
import 'package:vproduce/screens/successfulcheckout.dart';
import 'package:vproduce/screens/auctionorder.dart';
import 'package:vproduce/screens/auctioncheckout.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/auction': (context) => const AuctionProductScreen(),
  '/fixed': (context) => const FixedProductScreen(),
  '/tracking': (context) => const TrackingScreen(),
  '/order/auction': (context) => const AuctionOrderScreen(),
  '/checkout/fixed': (context) => const FixedCheckoutScreen(),
  '/checkout/auction': (context) => const AuctionCheckoutScreen(),
  '/checkout/successful': (context) => const SuccessfulCheckoutScreen(),
};
