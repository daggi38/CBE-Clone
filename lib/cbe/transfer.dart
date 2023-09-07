import 'package:flutter/material.dart';

class pgetransfer extends StatefulWidget {
  pgetransfer({Key? key}) : super(key: key);

  @override
  _pgetransferState createState() => _pgetransferState();
}

class _pgetransferState extends State<pgetransfer> {
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
                'Transfer',
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
                'Transfer To CBEBIrr Wallet',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue[800]),
              ),
              subtitle: Text('Bank to cbe birr wallet transfer'),
            ),
            Divider(indent: 50, thickness: 2),
            ListTile(
              trailing: Icon(Icons.navigate_next, color: Colors.purple),
              leading: Icon(
                Icons.mobile_friendly,
                color: Colors.purple,
                size: 35,
              ),
              title: Text('Make Payment to Beneficiary',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue[800])),
              subtitle: Text('Transfer to your beneficiaries'),
            ),
            Divider(indent: 50, thickness: 2),
            ListTile(
              trailing: Icon(Icons.navigate_next, color: Colors.purple),
              leading: Icon(
                Icons.mobile_friendly,
                color: Colors.purple,
                size: 35,
              ),
              title: Text('Transfer to CBE Account',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue[800])),
              subtitle: Text('Transfer to CBE Account'),
            ),
            Divider(indent: 50, thickness: 2),
            ListTile(
              trailing: Icon(Icons.navigate_next, color: Colors.purple),
              leading: Icon(
                Icons.mobile_friendly,
                color: Colors.purple,
                size: 35,
              ),
              title: Text('Local Money Transfer',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue[800])),
              subtitle: Text('Transfer to any none CBE Customer'),
            ),
            Divider(indent: 50, thickness: 2),
            ListTile(
              trailing: Icon(Icons.navigate_next, color: Colors.purple),
              leading: Icon(
                Icons.mobile_friendly,
                color: Colors.purple,
                size: 35,
              ),
              title: Text('Donation',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue[800])),
              subtitle: Text('Donation'),
            ),
            Divider(indent: 50, thickness: 2),
            ListTile(
              trailing: Icon(Icons.navigate_next, color: Colors.purple),
              leading: Icon(
                Icons.mobile_friendly,
                color: Colors.purple,
                size: 35,
              ),
              title: Text('Own Account Transfer',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue[800])),
              subtitle: Text('Transfer between your accounts'),
            ),
            Divider(indent: 50, thickness: 2),
            ListTile(
              trailing: Icon(Icons.navigate_next, color: Colors.purple),
              leading: Icon(
                Icons.mobile_friendly,
                color: Colors.purple,
                size: 35,
              ),
              title: Text('Transfer to own Telebirr Wallet',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue[800])),
              subtitle: Text('Transfer to own Telebirr Wallet'),
            ),
            Divider(indent: 50, thickness: 2),
            ListTile(
              trailing: Icon(Icons.navigate_next, color: Colors.purple),
              leading: Icon(
                Icons.mobile_friendly,
                color: Colors.purple,
                size: 35,
              ),
              title: Text('Transfer to other banks',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue[800])),
              subtitle: Text('Transfert to other banks'),
            ),
          ],
        ),
      ),
    );
  }
}
