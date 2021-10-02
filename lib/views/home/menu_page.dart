import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todos/views/home/model/MenuItem.dart';

class MenuItems {
  static const home = MenuItem("Home", Icons.home);
  static const profile = MenuItem("Profile", Icons.person);
  static const orders = MenuItem("Orders", Icons.card_travel);
  static const offerAndPromo =
      MenuItem("Offer and Promo", Icons.local_offer_outlined);
  static const privacyPolicy = MenuItem("Privacy Policy", Icons.policy);
  static const security = MenuItem("Security", Icons.security);

  static const all = [
    home,
    profile,
    orders,
    offerAndPromo,
    privacyPolicy,
    security
  ];
}

class MenuPage extends StatelessWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;

  const MenuPage(
      {Key? key, required this.currentItem, required this.onSelectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            ...MenuItems.all.map((item) => buildMenuItem(item)).toList(),
            Spacer(flex: 2)
          ],
        )),
      ));

  Widget buildMenuItem(MenuItem item) => ListTileTheme(
      selectedColor: Colors.white,
      child: ListTile(
        selectedTileColor: Colors.black12,
        selected: currentItem == item,
        minLeadingWidth: 20,
        leading: Icon(item.icon),
        title: Text(item.title),
        onTap: () => onSelectedItem(item),
      ));
}
