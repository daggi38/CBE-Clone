import 'package:flutter/material.dart';

class peoplee extends StatefulWidget {
  peoplee({Key? key}) : super(key: key);

  @override
  _pgetransferState createState() => _pgetransferState();
}

class _pgetransferState extends State<peoplee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                'People',
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
                'Manage Beneficiaries',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue[800]),
              ),
              subtitle: Text('Add or delete your friend Account'),
            ),
            Divider(indent: 50, thickness: 2),
          ],
        ),
      ),
    );
  }
}
