import 'package:flutter/material.dart';
import 'package:newap/cbe/cards.dart';
import 'package:newap/cbe/cbecard.dart';
import 'package:newap/cbe/peoplee.dart';
import 'package:newap/cbe/topupp.dart';
import 'package:newap/cbe/transfer.dart';
import 'package:newap/cbe/utilityy.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Text(
              'Home',
              style: TextStyle(color: Colors.purple),
              textAlign: TextAlign.center,
            ),
            cbecards(),
            Center(
              child: Text(
                "Services",
                style: TextStyle(color: Colors.purple),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => pgetransfer()));
                  },
                  child: Container(
                    child: Transfer(
                      child: Icon(
                        Icons.send_to_mobile_rounded,
                        color: Colors.purple,
                        size: 30,
                      ),
                      child2: Text(
                        'Transfer',
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => peoplee()));
                  },
                  child: Container(
                    child: Transfer(
                      child: Icon(
                        Icons.people,
                        color: Colors.purple,
                        size: 30,
                      ),
                      child2: Text(
                        'People',
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => utilityy()));
                  },
                  child: Container(
                    child: Transfer(
                      child: Icon(
                        Icons.house_sharp,
                        color: Colors.purple,
                        size: 30,
                      ),
                      child2: Text(
                        'Utilities',
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => topupp()));
                  },
                  child: Container(
                    child: Transfer(
                      child: Icon(
                        Icons.touch_app,
                        color: Colors.purple,
                        size: 30,
                      ),
                      child2: Text(
                        'Top Up',
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Positioned(
        right: 15,
        bottom: 10,
        child: FloatingActionButton(
          backgroundColor: Colors.purple,
          onPressed: () {},
          child: Icon(Icons.qr_code),
        ),
      )
    ]);
  }
}
