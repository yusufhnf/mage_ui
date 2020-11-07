import 'package:flutter/material.dart';
import 'package:mage_ui/pages/home.dart';
import 'package:mage_ui/pages/inbox.dart';
import 'package:mage_ui/pages/pesanan.dart';
import 'package:mage_ui/pages/profile.dart';
import 'package:mage_ui/pages/simpan.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  final _layoutPage = [
    Home(),
    Simpan(),
    Pesanan(),
    Inbox(),
    Profile(),
  ];

  void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save_alt),
            label: "Simpan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Pesanan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Akun Saya"),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}
