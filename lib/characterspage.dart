import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';
import 'page5.dart';
import 'page6.dart';
import 'page7.dart';
import 'page8.dart';
import 'page9.dart';
import 'page10.dart';
import 'page11.dart';
import 'page12.dart';
import 'page13.dart';
import 'page14.dart';
import 'page15.dart';
import 'page16.dart';
import 'page17.dart';
import 'page18.dart';
import 'page19.dart';
import 'page20.dart';

class CharactersPage extends StatefulWidget {
  @override
  _CharactersPageState createState() => _CharactersPageState();
}


class _CharactersPageState extends State<CharactersPage> {

  final List<String> avatarImagePaths = [
  'assets/chunli.png',
  'assets/jamie.jpg',
  'assets/luke.jpeg',
  'assets/ryu.jpeg',
    'assets/ken.jpg',
    'assets/juri.jpeg',
    'assets/kimberly.jpg',
    'assets/guile.jpg',
   'assets/deejay.jpg',
   'assets/ehonda.jpeg',
    'assets/dhalsim.jpg',
    'assets/blanka.jpg',
    'assets/zangief.jpg',
    'assets/jp.jpeg',
    'assets/marisa.jpeg',
    'assets/manon.jpg',
    'assets/aki.jpeg',
    'assets/rashid.jpeg',
    'assets/cammy.jpg' ,
    'assets/lily.png'
  ];


  void navigateToPage1() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page1()),
    );
  }

  void navigateToPage2() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page2()),
    );
  }

  void navigateToPage3() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page3()),
    );
  }

  void navigateToPage4() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page4()),
    );
  }

  void navigateToPage5() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page5()),
    );
  }

  void navigateToPage6() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page6()),
    );
  }

  void navigateToPage7() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page7()),
    );
  }

  void navigateToPage8() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page8()),
    );
  }

  void navigateToPage9() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page9()),
    );
  }

  void navigateToPage10() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page10()),
    );
  }

  void navigateToPage11() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page11()),
    );
  }

  void navigateToPage12() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page12()),
    );
  }

  void navigateToPage13() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page13()),
    );
  }

  void navigateToPage14() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page14()),
    );
  }

  void navigateToPage15() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page15()),
    );
  }

  void navigateToPage16() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page16()),
    );
  }

  void navigateToPage17() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page17()),
    );
  }

  void navigateToPage18() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page18()),
    );
  }

  void navigateToPage19() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page19()),
    );
  }

  void navigateToPage20() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page20()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text('CHOOSE YOUR FIGHTER'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
      ),
      body: Center(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // Number of avatars per row
            crossAxisSpacing: 6.0, // Space between avatars horizontally
            mainAxisSpacing: 6.0, // Space between avatars vertically
          ),
          itemCount: avatarImagePaths.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                if (index == 0) {
                  navigateToPage1();
                } else if (index == 1){
                  navigateToPage2();
                } else if (index == 2){
                  navigateToPage3();
                } else if (index == 3){
                  navigateToPage4();
                } else if (index == 4){
                  navigateToPage5();
                } else if (index == 5){
                  navigateToPage6();
                } else if (index == 6){
                  navigateToPage7();
                } else if (index == 7){
                  navigateToPage8();
                } else if (index == 8){
                  navigateToPage9();
                } else if (index == 9){
                  navigateToPage10();
                } else if (index == 10){
                  navigateToPage11();
                } else if (index == 11){
                  navigateToPage12();
                } else if (index == 12){
                  navigateToPage13();
                } else if (index == 13){
                  navigateToPage14();
                } else if (index == 14) {
                  navigateToPage15();
                }else if (index == 15){
                  navigateToPage16();
                } else if (index == 16){
                  navigateToPage17();
                } else if (index == 17){
                  navigateToPage18();
                } else if (index == 18){
                  navigateToPage19();
                } else if (index == 19){
                  navigateToPage20();
                }
              },
              child: CircleAvatar(
                backgroundImage: AssetImage(avatarImagePaths[index]),
                radius: 30,
              ),
            );
          },
        ),
      ),
    );
  }
}