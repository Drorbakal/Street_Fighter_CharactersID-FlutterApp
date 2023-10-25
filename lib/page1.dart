import 'package:flutter/material.dart';
import 'page20.dart';
import 'page2.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {


  void showMessage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Your Fighter Is :'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset('assets/chunlisubmit.gif', width: 100, height: 100),
              SizedBox(height: 16),
              Text('Chun-Li'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Submit'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text('Fighter ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page20()));
            },
            child: Icon(Icons.arrow_back_ios_new),
            backgroundColor: Colors.grey[800],
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                showMessage();
              });
            },
            child: Icon(Icons.check),
            backgroundColor: Colors.grey[800],
          ),// Adds some spacing between the FABs
          FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()));
            },
            child: Icon(Icons.arrow_forward_ios),
            backgroundColor: Colors.grey[800],
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/chunli.png'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.white,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Chun-Li',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT FIGHTER DETAILS',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Height 5'7\nWeight Secret♡",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text('A former high-kicking ICPO agent,'
                'Chun-Li looks after Li-Fen, a victim of the Black Moon Incident.'
                ' With Shadaloo sundered, she now runs kung fu classes,'
                ' and has become a well-loved member of the local community.',
            style:TextStyle(
              color: Colors.grey,
              fontSize: 10.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.alternate_email,
                  color: Colors.white,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Chun-li123@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
        ]),
      ),
    );
  }
}
