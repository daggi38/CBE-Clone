import 'package:flutter/material.dart';

class utilityy extends StatefulWidget {
  utilityy({Key? key}) : super(key: key);

  @override
  _pgetransferState createState() => _pgetransferState();
}

class _pgetransferState extends State<utilityy> {
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
                'Utilities',
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
                'Utility payment',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue[800]),
              ),
              subtitle: Text('Utility payment'),
            ),
            Divider(indent: 50, thickness: 2),
            ListTile(
              trailing: Icon(Icons.navigate_next, color: Colors.purple),
              leading: Icon(
                Icons.mobile_friendly,
                color: Colors.purple,
                size: 35,
              ),
              title: Text('Ethiopian Airlines Services',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue[800])),
              subtitle: Text('Airlines and e-staff'),
            ),
            Divider(indent: 50, thickness: 2),
            ListTile(
              trailing: Icon(Icons.navigate_next, color: Colors.purple),
              leading: Icon(
                Icons.mobile_friendly,
                color: Colors.purple,
                size: 35,
              ),
              title: Text('Immigration',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue[800])),
              subtitle: Text('Passport payment and Origin id payment'),
            ),
            Divider(indent: 50, thickness: 2),
            ListTile(
              trailing: Icon(Icons.navigate_next, color: Colors.purple),
              leading: Icon(
                Icons.mobile_friendly,
                color: Colors.purple,
                size: 35,
              ),
              title: Text('DSTV',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue[800])),
              subtitle: Text('DSTV Payment'),
            ),
            Divider(indent: 50, thickness: 2),
            ListTile(
              trailing: Icon(Icons.navigate_next, color: Colors.purple),
              leading: Icon(
                Icons.mobile_friendly,
                color: Colors.purple,
                size: 35,
              ),
              title: Text('CANAL +',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue[800])),
              subtitle: Text('CANAL + Payment'),
            ),
            Divider(indent: 50, thickness: 2),
          ],
        ),
      ),
    );
  }
}
