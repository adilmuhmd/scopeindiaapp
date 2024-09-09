import 'package:flutter/material.dart';
import 'package:scopeindiaapp/coursepage.dart';
import 'package:scopeindiaapp/homepage.dart';

class sample extends StatefulWidget {
  const sample({super.key});

  @override
  State<sample> createState() => _sampleState();
}

class _sampleState extends State<sample> {
  List <Widget> pages = [
    homePage(),
    coursepage(),
  ];

  var index = 0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[index],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(
                Icons.home_filled
            ),
                label: "HOME"
            ),
            BottomNavigationBarItem(icon: Icon(
                Icons.book
            ),
                label: "COURSES"
            ),
            BottomNavigationBarItem(icon: Icon(
                Icons.people_alt
            ),
                label: "PLACEMENT CELL"
            ),
          ],
          backgroundColor: Color.fromARGB(255,0,0,139),
          unselectedItemColor: Colors.white,
          selectedItemColor: Color.fromARGB(255,255,215,0),
          onTap: (x) {
            setState(() {
              index=x;
            }
            );
          },
          currentIndex: index,

        ),
      ),
    );
  }
}
