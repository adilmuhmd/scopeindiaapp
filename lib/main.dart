import 'package:flutter/material.dart';
import 'package:scopeindiaapp/firebase_options.dart';
import 'package:scopeindiaapp/homepage.dart';
import 'package:scopeindiaapp/loginpage.dart';
import 'package:scopeindiaapp/samplepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:scopeindiaapp/signuppage.dart';


CollectionReference users = FirebaseFirestore.instance.collection('user_master');

Future<List<Map<String, dynamic>>> getUserData() async {
  print("Inside get user fn...");
  QuerySnapshot snapshot = await users.get();
  return snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
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
