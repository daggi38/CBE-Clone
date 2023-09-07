import 'package:flutter/material.dart';

class topupp extends StatefulWidget {
  topupp({Key? key}) : super(key: key);

  @override
  _pgetransferState createState() => _pgetransferState();
}

class _pgetransferState extends State<topupp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Center(
            child: Text(
              'አማ',
              style: TextStyle(color: Colors.purple),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              Icons.refresh,
              color: Colors.purple,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child:
            // Center(child: Text('Transfer')),
            Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                'Top Up',
                style: TextStyle(fontSize: 20),
              )),
            ),
            ListTile(
              trailing: Icon(
                Icons.navigate_next,
                color: Colors.purple,
              ),
              leading: Icon(
                Icons.mobile_friendly,
                color: Colors.purple,
                size: 35,
              ),
              title: Text(
                'Airtime',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue[800]),
              ),
              subtitle: Text('Airtime TopUp'),
            ),
            Divider(indent: 50, thickness: 2),
          ],
        ),
      ),
    );
  }
}
