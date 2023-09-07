import 'package:flutter/material.dart';
import 'package:newap/cbe/cbecard.dart';
import 'package:newap/cbe/list2.dart';

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
          cbecards(),
          Expanded(
            flex: 1,
            child: Container(
              height: 200,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return Container(child: posts[index]);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
