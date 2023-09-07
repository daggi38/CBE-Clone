import 'package:flutter/material.dart';
import 'package:newap/cbe/cbehome.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  void display() {
    setState(() {
      // AlertDialog(
      //   backgroundColor: Colors.blue,
      //   content: Container(
      //     height: 200,
      //     child: Text('wrong'),
      //   ),
      // );
      Text('wrong');
    });
  }

  final _passwordcontroller = TextEditingController();

  final password = '1234';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 5,
        backgroundColor: Colors.purple,
        elevation: 0,
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
            ),
          ),
        ],
      ),
      body: SafeArea(
        bottom: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'አማ',
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
              Center(
                child: Image.asset(
                  'images/cbe.png',
                  height: 150,
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Text(
                'Welcome !',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Commercial Bank of Ethiopia',
                style: TextStyle(fontSize: 15, color: Colors.deepPurple),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                'PIN',
                style: TextStyle(color: Colors.deepPurple),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 75.0, right: 75),
                  child: TextField(
                    controller: _passwordcontroller,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    maxLength: 4,
                  ),
                ),
              ),
              GestureDetector(
                onTap: (() {
                  // if (_passwordcontroller.text == password.toString()) {
                  //   display();
                  // }
                  if (_passwordcontroller.text == password.toString()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => cbehome()));
                  } else
                    (display());
                }),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(159, 177, 108, 5),
                      borderRadius: BorderRadius.circular(100)),
                  child: Icon(
                    Icons.navigate_next,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Center(
                  child: Text(
                'Copyright @ Commercial Bank of Ethiopia',
                style: TextStyle(color: Colors.deepPurple),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

//  enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(
//                             color: Colors.deepPurple,
//                           ),
//                         ),