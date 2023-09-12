import 'package:flutter/material.dart';

class cbecards extends StatefulWidget {
  cbecards({Key? key}) : super(key: key);

  @override
  _cbecardsState createState() => _cbecardsState();
}

class _cbecardsState extends State<cbecards> {
  String hidden = '********';

  bool obsecure = true;

  String amount = '20582.24';
  void hidepass() {
    setState(() {
      obsecure = !obsecure;
    });
  }

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
                height: 0,
              ),
              Text('Balance', style: TextStyle(color: Colors.amber[200])),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    obsecure ? hidden : amount,
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
                    onTap: () {
                      hidepass();
                    },
                    child: Text(
                      obsecure ? "show amount" : "Hide",
                      style: TextStyle(
                        color: Colors.amber,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Text(
                  'Saving - 1000*****6888',
                  style: TextStyle(color: Colors.amber),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Text(
                  DateTime.now().toLocal().toString(),
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          height: 200,
          width: 400,
        ));
  }
}
