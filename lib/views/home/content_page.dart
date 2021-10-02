import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todos/fake_date/fake_data.dart';
import 'package:flutter_todos/views/home/model/MenuItem.dart';
import 'package:flutter_todos/views/home/product/product_list_page.dart';
import 'package:flutter_todos/views/home/shared/menu_widget.dart';
import 'package:flutter_todos/views/order/cart_page.dart';
import 'package:flutter_todos/views/order/history_page.dart';
import 'package:flutter_todos/views/order/order_page.dart';
import 'package:flutter_todos/views/profile/profile_page.dart';

class ContentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  int _selectedIndex = 0;
  final kinds = FAKE_KINDS;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => _getPage()));
    });
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: kinds.length,
      child: Scaffold(
          appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              leading: MenuWidget(),
              centerTitle: true,
              shadowColor: Colors.white,
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CartPage()));
                    },
                    icon: Icon(Icons.shopping_bag_outlined))
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(200),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Delcious food for you",
                                style: TextStyle(fontSize: 30),
                              ),
                            ],
                          ),
                          // Spacer(),
                          TextField(
                            decoration: InputDecoration(
                                floatingLabelStyle: TextStyle(fontSize: 10),
                                isCollapsed: true,
                                labelText: "Search",
                                icon: Icon(Icons.search)),
                          ),
                        ],
                      ),
                    ),
                    TabBar(
                      onTap: (index) {},
                      isScrollable: true,
                      labelColor: Colors.red,
                      unselectedLabelColor: Colors.black,
                      tabs: kinds
                          .map((kind) => Tab(
                                text: kind.name,
                              ))
                          .toList(),
                    )
                  ],
                ),
              )),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_repair_service_outlined),
                  label: 'order'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'profile'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history), label: 'history'),
            ],
          ),
          body: TabBarView(
            children: kinds.map((kind) => ProductListPage(kind: kind)).toList(),
          )
          // ProductListPage(),
          ));

  Widget _getPage() {
    switch (this._selectedIndex) {
      case 1:
        return OrderPage();
      case 2:
        return ProfilePage();
      case 3:
        return HistoryPage();
      default:
        return ContentPage();
    }
  }
}
