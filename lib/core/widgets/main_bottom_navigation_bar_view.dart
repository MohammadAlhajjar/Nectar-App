import 'package:flutter/material.dart';
import '../../view/cart_view.dart';
import '../../view/shop_view.dart';

class MainBottomNavigationBarView extends StatefulWidget {
  const MainBottomNavigationBarView({super.key});

  @override
  State<MainBottomNavigationBarView> createState() =>
      _MainBottomNavigationBarViewState();
}

class _MainBottomNavigationBarViewState
    extends State<MainBottomNavigationBarView> {
  int selectedIndex = 0;
  List<Widget> views = [
    const ShopView(),
    Container(),
    const CartView(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        selectedIndex: selectedIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.shop), label: 'Shop'),
          NavigationDestination(icon: Icon(Icons.explore), label: 'Explore'),
          NavigationDestination(icon: Icon(Icons.card_travel), label: 'Cart'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Favourite'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
      body: views[selectedIndex],
    );
  }
}
