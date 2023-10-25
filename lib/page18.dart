import 'package:flutter/material.dart';
import 'page17.dart';
import 'page19.dart';

class Page18 extends StatefulWidget {
  @override
  _Page18State createState() => _Page18State();
}

class _Page18State extends State<Page18> {

  void showMessage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Your Fighter Is :'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset('assets/rashidsubmit.gif', width: 100, height: 100),
              SizedBox(height: 16),
              Text('Rashid'),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page17()));
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page19()));
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
                  backgroundImage: AssetImage('assets/rashid.jpeg'),
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
                'Rashid',
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
                "Height 5'10\nWeight 187lbs",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text('”The Soaring Eagle of the Desert” that fights using parkour.'
                  ' With the wind as his ally, he outfoxes opponents with his high mobility.'
                  ' Born into nobility,'
                  "he's a carefree but earnest man. Loves video streaming.",
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
                    'Rashid123@gmail.com',
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
