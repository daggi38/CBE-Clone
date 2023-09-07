import 'package:flutter/material.dart';

class cbecards extends StatefulWidget {
  cbecards({Key? key}) : super(key: key);

  @override
  _cbecardsState createState() => _cbecardsState();
}

class _cbecardsState extends State<cbecards> {
  String obsecure = '********';

  String amount = '20582.24';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.black,
                Colors.grey,
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Commercial Bank of Ethiopia',
                style:
                    TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'The bank you can always Rely on',
                  style: TextStyle(
                      color: Colors.amber[200], fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text('Balance', style: TextStyle(color: Colors.amber[200])),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    obsecure,
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onDoubleTap: () {
                      setState(() {});
                    },
                    onTap: (() {
                      setState(() {
                        obsecure = amount;
                      });
                    }),
                    child: Text(
                      'Show amount',
                      style: TextStyle(
                        color: Colors.amber,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Saving - 1000*****6888',
                  style: TextStyle(color: Colors.amber),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Dec 7, 2022 5:40:40 PM',
                ),
              )
            ],
          ),
          height: 250,
          width: 400,
        ));
  }
}
