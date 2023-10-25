import 'package:flutter/material.dart';
import 'page1.dart'; // Import your first page class
import 'page2.dart'; // Import your second page class
import 'homepage.dart';
import 'characterspage.dart';// Import your homepage class

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/homepage', // Set the initial route to '/homepage'
      routes: {
        '/': (context) => Page1(), // Define the route for the first page
        '/page2': (context) => Page2(), // Define the route for the second page
        '/homepage': (context) => HomePage(), // Define the route for the Home Page
      },
    );
  }
}
