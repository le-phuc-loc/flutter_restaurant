import 'package:flutter/material.dart';
import 'package:flutter_todos/views/home/content_page.dart';
import 'package:flutter_todos/views/home/menu_page.dart';
import 'package:flutter_todos/views/home/model/MenuItem.dart';
import 'package:flutter_todos/views/offer/offer_page.dart';
import 'package:flutter_todos/views/order/order_page.dart';
import 'package:flutter_todos/views/policy/policy_page.dart';
import 'package:flutter_todos/views/profile/profile_page.dart';
import 'package:flutter_todos/views/security/security_page.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MenuItem currentItem = MenuItems.home;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ZoomDrawer(
        style: DrawerStyle.Style1,
        borderRadius: 40,
        angle: 0,
        slideWidth: MediaQuery.of(context).size.width * 0.6,
        showShadow: true,
        backgroundColor: Colors.orangeAccent,
        menuScreen: Builder(
            builder: (context) => MenuPage(
                currentItem: currentItem,
                onSelectedItem: (item) {
                  setState(() {
                    currentItem = item;
                  });
                  ZoomDrawer.of(context)!.close();
                  Navigator.push(context,MaterialPageRoute(builder: (context) => getPage()));
                })),
        mainScreen: ContentPage());
  }

  Widget getPage() {
    switch (currentItem) {
      case MenuItems.profile:
        return ProfilePage();
      case MenuItems.orders:
        return OrderPage();
      case MenuItems.offerAndPromo:
        return OfferPage();
      case MenuItems.privacyPolicy:
        return PolicyPage();
      case MenuItems.security:
        return SecurityPage();
      default:
        return ContentPage();
    }
  }
}
