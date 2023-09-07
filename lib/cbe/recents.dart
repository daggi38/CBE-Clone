import 'dart:io';

import 'package:flutter/material.dart';
import 'package:newap/cbe/transactions.dart';

import 'lists.dart';

class recents extends StatelessWidget {
  recents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'Services',
            style: TextStyle(color: Colors.purple),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 70,
          ),
          Center(
            child: Text(
              'Recent Transactions',
              style: TextStyle(color: Colors.purple, fontSize: 20),
            ),
          ),
          for (final car in posts) car
        ],
      ),
    );
  }
}
