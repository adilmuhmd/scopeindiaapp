import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:scopeindiaapp/homepage.dart';
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Color.fromARGB(240, 70,130,180),
              expandedHeight: 150.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset("images/bluewhitebg.jpg",
                  fit: BoxFit.cover,
                ),
                centerTitle: true,
                title: Image.asset("logos/scope-india-logo-home-page.png",
                  scale: 2.4,
                ),
              ),
            ),
            SliverList( delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index){
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: TextField(
                          onChanged: (input) {
                            setState(() {
                              email = input;
                            });
                          },
                          decoration: InputDecoration(
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => homePage(),));



                          } catch (e) {
                            print("Login failed: $e");
                          }
                        },
                        child: Text("Sign In"),
                      ),
                      ElevatedButton(onPressed: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(),));
                        });
                      }, child: Text("Signup"))
                    ],
                  );
                },
              childCount: 1,
                ),
            ),
          ],
        ),
      ),
    );
  }
}
