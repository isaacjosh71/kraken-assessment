
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:kraken_assessment/screens/active_page.dart';
import 'package:kraken_assessment/screens/explore.dart';
import 'package:kraken_assessment/screens/home.dart';
import 'package:kraken_assessment/screens/profile.dart';
import 'package:kraken_assessment/screens/wallet.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  late PersistentTabController _controller;

  @override
  void initState(){
    super.initState();
    _controller = PersistentTabController(initialIndex: 3);
  }

  List<Widget> _buildScreens() {
    return [
      const Home(),
      const Wallet(),
      const Explore(),
      const ActivePage(),
      const Profile()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(AntDesign.home),
        title: ("Home"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: const Color(0xFF2B3849).withOpacity(0.8),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(AntDesign.wallet),
        title: ("Wallet"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: const Color(0xFF2B3849).withOpacity(0.8),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Entypo.compass),
        title: ("Explore"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: const Color(0xFF2B3849).withOpacity(0.8),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(AntDesign.areachart),
        title: ("Explore"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: const Color(0xFF2B3849).withOpacity(0.8),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(AntDesign.user),
        title: ("Profile"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: const Color(0xFF2B3849).withOpacity(0.8),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      // decoration: NavBarDecoration(
      //   borderRadius: BorderRadius.circular(10.0),
      //   colorBehindNavBar: Colors.white,
      // ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style12, // Choose the nav bar style with this property.
    );
  }
}

