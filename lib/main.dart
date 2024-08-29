import 'package:flutter/material.dart';
import 'package:scopeindiaapp/homepage.dart';

void main() {
  runApp(const scopeindia());
}

class scopeindia extends StatelessWidget {
  const scopeindia({super.key});


  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      home: Scaffold(
        body: homePage(),
      ),
    );
  }
}
