import 'package:flutter/material.dart';
import 'package:scopeindiaapp/homepage.dart';

class coursepage extends StatefulWidget {
  const coursepage({super.key});

  @override
  State<coursepage> createState() => _coursepageState();
}

class _coursepageState extends State<coursepage> {
  var size,height,width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height=size.height;
    width=size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
                    color: Color.fromARGB(230,0,0,95),
                    child: Column(
                      children: [
                        Text("Center for Software, Networking, & Cloud Education",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white
                        ),
                          textAlign: TextAlign.center,
                        ),
                        Text("All Trainers at SCOPE INDIA are working professionals, Software Engineers, Networking Engineers, and Software Test Engineers of Suffix E Solutions with",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text("17 years of Industrial experience.",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 255,215,0)
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                            width: width/2,
                            child: Image(image: AssetImage("images/5star.png"))),
                        Text("Google 4.9 * Rated Institute",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.white
                          ),
                          textAlign: TextAlign.center,
                        ),
        
        
        
                        Text("Software Programming Courses",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white
                          ),
                          textAlign: TextAlign.start,
                        ),
                        MaterialButton(onPressed: () {
        
                        },
                          child: Text("Java Full Stack Internship",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                          shape: StadiumBorder(),
                          color: Colors.white,
                          height: height/15,
                        ),
                        SizedBox(
                          height: height/65,
                        ),
        
                        MaterialButton(onPressed: () {
        
                        },
                          child: Text("Python Full Stack Internship",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                          shape: StadiumBorder(),
                          color: Colors.white,
                          height: height/15,
                        ),
        
                        SizedBox(
                          height: height/65,
                        ),
        
                        MaterialButton(onPressed: () {
        
                        },
                          child: Text("PHP Full Stack Internship",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                          shape: StadiumBorder(),
                          color: Colors.white,
                          height: height/15,
                        ),
        
                        SizedBox(
                          height: height/65,
                        ),
        
                        MaterialButton(onPressed: () {
        
                        },
                          child: Text(".NET Core Full Stack Internship",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                          shape: StadiumBorder(),
                          color: Colors.white,
                          height: height/15,
                        ),
        
                        SizedBox(
                          height: height/65,
                        ),
        
                        MaterialButton(onPressed: () {
        
                        },
                          child: Text("MERN Full Stack Internship",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                          shape: StadiumBorder(),
                          color: Colors.white,
                          height: height/15,
                        ),
        
                        SizedBox(
                          height: height/65,
                        ),
        
                        MaterialButton(onPressed: () {
        
                        },
                          child: Text("MEAN Full Stack Internship",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                          shape: StadiumBorder(),
                          color: Colors.white,
                          height: height/15,
                        ),
        
                        SizedBox(
                          height: height/65,
                        ),
        
                        MaterialButton(onPressed: () {
        
                        },
                          child: Text("Android/ios Mobile App Course in Google Flutter",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                          shape: StadiumBorder(),
                          color: Colors.white,
                          height: height/15,
                        ),
        
                        SizedBox(
                          height: height/65,
                        ),
        
                        MaterialButton(onPressed: () {
        
                        },
                          child: Text("Android/ios Mobile App Course in IONIC",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                          shape: StadiumBorder(),
                          color: Colors.white,
                          height: height/15,
                        ),
        
                        SizedBox(
                          height: height/65,
                        ),
        
                        MaterialButton(onPressed: () {
        
                        },
                          child: Text("Website Designing Course",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                          shape: StadiumBorder(),
                          color: Colors.white,
                          height: height/15,
                        ),
        
                        SizedBox(
                          height: height/65,
                        ),
        
                        MaterialButton(onPressed: () {
        
                        },
                          child: Text("UI/UX Designing",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                          shape: StadiumBorder(),
                          color: Colors.white,
                          height: height/15,
                        ),
        
        
                      ],
        
        
                    ),
                  ),
      ),

    );
  }
}
