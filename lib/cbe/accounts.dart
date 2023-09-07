import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newap/cbe/cbecard.dart';
import 'package:newap/cbe/drawer.dart';
import 'package:newap/cbe/lists.dart';
import 'package:newap/cbe/transactions.dart';

class accounts extends StatefulWidget {
  accounts({Key? key}) : super(key: key);

  @override
  State<accounts> createState() => _accountsState();
}

class _accountsState extends State<accounts> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const Text(
        'Services',
        style: TextStyle(color: Colors.purple),
        textAlign: TextAlign.center,
      ),
      cbecards(),
      for (final card in posts) card
    ]);
  }
}
