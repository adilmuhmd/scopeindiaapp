import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:scopeindiaapp/homepage.dart';
import 'package:scopeindiaapp/navigationpage.dart';
import 'package:scopeindiaapp/sample3.dart';
import 'package:scopeindiaapp/signuppage.dart';


class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String email = "";
  String password = "";

  final FirebaseAuth _auth = FirebaseAuth.instance;
  var size,height,width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return PopScope(
      canPop: false,
      child: Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height/10,
              child: Image(image: AssetImage("logos/login.png")
              ),
            ),
            const Text("Log In!",
              style: TextStyle(
                fontSize: 45,
                fontFamily: "Archivo",
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                onChanged: (input) {
                  setState(() {
                    email = input;
                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                  hintText: "Enter your email",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                onChanged: (input) {
                  setState(() {
                    password = input;
                  });
                },
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Enter your password",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  UserCredential userCredential = await _auth.signInWithEmailAndPassword(
                    email: email,
                    password: password,
                  );

                  // If login is successful, you can navigate to the next screen or perform other actions.
                  print("Login successful: ${userCredential.user?.email}");
                  Navigator.push(context, MaterialPageRoute(builder: (context) => navpage(),));



                } catch (e) {
                  print("Login failed: $e");
                }
              },
              child: Text("Login",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color.fromARGB(230,0,0,95)),
              ),
            ),
            SizedBox(
              height: height/25,
            ),
            Text("Not a user ?",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            MaterialButton(onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));

              });
            },
              child: Text("SignUp!",
                style: TextStyle(
                  color: Color.fromARGB(230,0,0,95),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: "Archivo",

                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );


  }
}
