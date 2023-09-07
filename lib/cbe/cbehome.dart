import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newap/cbe/cards.dart';
import 'package:newap/cbe/drawer.dart';
import 'package:newap/cbe/recents.dart';
import 'package:newap/cbe/testpage.dart';
import 'package:newap/cbe/transfer.dart';

import 'accounts.dart';

class cbehome extends StatefulWidget {
  cbehome({Key? key}) : super(key: key);

  @override
  _cbehomeState createState() => _cbehomeState();
}

class _cbehomeState extends State<cbehome> {
  int selectedindex = 0;

  void onitemtapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    Home(),
    accounts(),
    recents(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        actions: [
          Center(
            child: Text(
              'አማ',
              style: TextStyle(color: Colors.purple),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              Icons.refresh,
              color: Colors.purple,
            ),
          ),
        ],
      ),
      drawer: Drawerr(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple[400],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance,
            ),
            label: 'Accounts',
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.timelapse_outlined,
              ),
              label: 'Recents'),
        ],
        currentIndex: selectedindex,
        onTap: onitemtapped,
      ),
      body: SafeArea(
        child: PageView(children: [_pages[selectedindex]]),
      ),
    );
  }
}
