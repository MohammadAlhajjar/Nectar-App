import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/assets_manager.dart';
import '../resources/colors_manager.dart';
import '../../view/cart_view.dart';
import '../../view/explore_view.dart';

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
    Container(),
    const ExploreView(),
    const CartView(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 1,
            ),
          ],
        ),
        child: NavigationBar(
          elevation: 50,
          onDestinationSelected: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          selectedIndex: selectedIndex,
          destinations: [
            NavigationDestination(
              icon: SvgPicture.asset(AssetsManager.shopIcon),
              label: 'Shop',
              selectedIcon: SvgPicture.asset(
                AssetsManager.shopIcon,
                color: ColorsManager.primaryColor,
              ),
            ),
            NavigationDestination(
                icon: SvgPicture.asset(AssetsManager.exploreIcon),
                selectedIcon: SvgPicture.asset(
                  AssetsManager.exploreIcon,
                  color: ColorsManager.primaryColor,
                ),
                label: 'Explore'),
            NavigationDestination(
              icon: SvgPicture.asset(AssetsManager.cartIcon),
              selectedIcon: SvgPicture.asset(
                AssetsManager.cartIcon,
                color: ColorsManager.primaryColor,
              ),
              label: 'Cart',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(AssetsManager.favouriteIcon),
              selectedIcon: SvgPicture.asset(
                AssetsManager.favouriteIcon,
                color: ColorsManager.primaryColor,
              ),
              label: 'Favourite',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(AssetsManager.profileIcon),
              selectedIcon: SvgPicture.asset(
                AssetsManager.profileIcon,
                color: ColorsManager.primaryColor,
              ),
              label: 'Account',
            ),
          ],
        ),
      ),
      body: views[selectedIndex],
    );
  }
}
