import 'package:flutter/material.dart';
import 'package:vproduce/widgets/vtext.dart';
import 'package:vproduce/screens/store.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  Widget getBody() {
    switch (currentIndex) {
      case 0:
        return const StoreScreen();

      default:
        return const StoreScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const VText(
            text: "VProduce", color: Colors.black, size: 18, isBold: false),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xff2BC61D),
        unselectedItemColor: Colors.black.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: currentIndex,
        onTap: (int index) {
          if (mounted) {
            setState(() {
              currentIndex = index;
            });
          }
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            label: 'Shop',
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
              label: 'Favorite', icon: Icon(Icons.favorite_border)),
          BottomNavigationBarItem(
              label: '...', icon: Icon(Icons.list_outlined)),
          BottomNavigationBarItem(label: '', icon: Icon(Icons.person_outline)),
        ],
      ),
      body: getBody(),
    );
  }
}
