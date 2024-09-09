import 'package:flutter/material.dart';
import 'package:scopeindiaapp/courses.dart';
import 'package:scopeindiaapp/homepage.dart';
import 'package:scopeindiaapp/placementcell.dart';


class sample3 extends StatefulWidget {
  const sample3({super.key});

  @override
  State<sample3> createState() => _sample3State();
}

class _sample3State extends State<sample3> {
  var index = 0;
  List<Widget> bottom = [
    homePage(),courses(),placementcell(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          centerTitle: true,
          backgroundColor: Color.fromARGB(230,0,0,95),
          title: Image(image: AssetImage("logos/scope-india-logo-home-page.png"),
          height: 100,
          ),
        ),
        body: bottom[index],
          bottomNavigationBar: BottomNavigationBar(
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
                  label: "Placement Cell"
              ),
            ],
            backgroundColor: Color.fromARGB(230,0,0,95),
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.white,
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
