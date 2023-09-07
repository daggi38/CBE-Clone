import 'package:flutter/material.dart';
import 'package:newap/cbe/cbehome.dart';
import 'package:newap/cbe/home.dart';

import 'package:newap/cbe/testpage.dart';
import 'package:newap/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.grey,
            appBarTheme:
                AppBarTheme(iconTheme: IconThemeData(color: Colors.purple))
            //   textTheme: TextTheme(
            //     bodyText1: TextStyle(),
            //     bodyText2: TextStyle(),
            //   ).apply(
            //     bodyColor: Colors.orange,
            //     displayColor: Colors.blue,
            //   ),
            // ),
            ),
        // home: Myhomepage(),
        home: loginpage());
    //home: cbehome());
    // home: listtile());
    //home: testpage());
  }
}
