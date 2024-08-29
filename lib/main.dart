import 'package:flutter/material.dart';
import 'package:scopeindiaapp/homepage.dart';
import 'package:scopeindiaapp/samplepage.dart';

void main() {
  runApp(scopeindia());
}

class scopeindia extends StatelessWidget {
  const scopeindia({super.key});


  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: homePage(),
      ),
    );
  }
}
