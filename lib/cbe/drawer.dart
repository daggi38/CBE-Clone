import 'package:flutter/material.dart';
import 'package:newap/cbe/home.dart';

class Drawerr extends StatefulWidget {
  Drawerr({Key? key}) : super(key: key);

  @override
  _DrawerrState createState() => _DrawerrState();
}

class _DrawerrState extends State<Drawerr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              Container(
                height: 250,
                color: Colors.purple,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/cbe.png',
                      height: 80,
                    ),
                    Center(
                      child: Text(
                        'Commercial Bank of Ethiopia',
                        style: TextStyle(color: Colors.amber),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text('The bank you can always Rely on',
                            style: TextStyle(color: Colors.amber)),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.password_rounded, color: Colors.purple),
                title: Text('Change Pin'),
              ),
              ListTile(
                leading: Icon(Icons.unsubscribe, color: Colors.purple),
                title: Text('Unsubscribe'),
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.purple),
                title: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => loginpage()));
                    },
                    child: Text('Log out')),
              ),
              ListTile(
                leading: Icon(Icons.info, color: Colors.purple),
                title: Text('About'),
              ),
              ListTile(
                leading: Icon(Icons.star, color: Colors.purple),
                title: Text('Rate this App'),
              ),
              ListTile(
                leading: Icon(Icons.mosque, color: Colors.purple),
                title: Text('Cbe NOOR'),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
