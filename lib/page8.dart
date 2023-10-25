import 'package:flutter/material.dart';
import 'page7.dart';
import 'page9.dart';

class Page8 extends StatefulWidget {
  @override
  _Page8State createState() => _Page8State();
}

class _Page8State extends State<Page8> {

  void showMessage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Your Fighter Is :'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset('assets/guilesubmit.gif', width: 100, height: 100),
              SizedBox(height: 16),
              Text('Guile'),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page7()));
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page9()));
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
                  backgroundImage: AssetImage('assets/guile.jpg'),
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
                'Guile',
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
                "Height 6'0\nWeight 218lbs",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text("A US Air Force pilot who fights for his country,"
                  " Guile succeeded in dismantling Shadaloo and avenging his friend Charlie."
                  " He enjoys living the family man life,"
                  " but new battlefields await him.",
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
                    'Guile123@gmail.com',
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
