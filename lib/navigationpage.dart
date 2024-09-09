import 'package:flutter/material.dart';
import 'package:scopeindiaapp/coursepage.dart';
import 'package:scopeindiaapp/homepage.dart';
import 'package:scopeindiaapp/homesample.dart';
import 'package:scopeindiaapp/placementcell.dart';


class navpage extends StatefulWidget {
  const navpage({super.key});

  @override
  State<navpage> createState() => _navpageState();
}

class _navpageState extends State<navpage> {

  var index = 0;
  List<Widget> bottom = [
    homePage(),coursepage(),placementcell(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("APP BAR")
        ),
        body: bottom[index],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(
                Icons.home_filled
            ),
                label: "Home"
            ),
            BottomNavigationBarItem(icon: Icon(
                Icons.book
            ),
                label: "Courses"
            ),
            BottomNavigationBarItem(icon: Icon(
                Icons.person
            ),
                label: "Profile"
            ),
            BottomNavigationBarItem(icon: Icon(
                Icons.search
            ),
                label: "Search"
            ),
          ],
          backgroundColor: Color.fromARGB(230,0,0,95),
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          iconSize: 30,
          showSelectedLabels: true,
          selectedFontSize: 16,
          unselectedFontSize: 12,
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
