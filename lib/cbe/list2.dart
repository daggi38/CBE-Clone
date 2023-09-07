import 'package:flutter/material.dart';

class list4 extends StatelessWidget {
  const list4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 25,
                    offset: Offset(10, 10),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 25,
                    offset: Offset(-5, -5),
                  )
                ],
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20)),
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.arrow_upward_rounded,
                      color: Colors.red,
                    ),
                    Text(
                      'Withdrawal',
                      style: TextStyle(fontSize: 20, color: Colors.purple),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      '75.00 Birr',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Dec 7,2022',
                      style: TextStyle(),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'Mobile Debit',
                      style: TextStyle(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 25,
                    offset: Offset(10, 10),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 25,
                    offset: Offset(-5, -5),
                  )
                ],
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20)),
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.green,
                    ),
                    Text(
                      'Deposit',
                      style: TextStyle(fontSize: 20, color: Colors.purple),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      '2000.00 Birr',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Dec 7,2022',
                      style: TextStyle(),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'Mobile Debit',
                      style: TextStyle(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
