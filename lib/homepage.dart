import 'package:flutter/material.dart';
import 'characterspage.dart'; // Import your Page1 class

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/homepage.jpg'), // Replace with your image path
                fit: BoxFit.cover, // Cover the entire screen
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CharactersPage()));
              },
              child: Container(
                padding: EdgeInsets.all(30.0),
                child: Icon(
                  Icons.play_circle,
                  size: 50.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
