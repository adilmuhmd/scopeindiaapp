import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}



class _homePageState extends State<homePage> {

  final List<String> courseimages = [
    'images/Devops-training-scopeindia.jpg',
    'images/scope-india-aws-certification-course.jpg',
    'images/scope-india-azure-certification-course.jpg',
    'images/scope-india-digital-marketing-course.jpg',
    'images/scope-india-dotnet-core-full-stack-course.jpg',
    'images/scope-india-flutter-fullstack-course.jpg',
    'images/scope-india-java-full-stack-course.jpg',
    'images/scope-india-mean-mern-stack-course.jpg',
    'images/scope-india-network-server-administration-course.jpg',
    'images/scope-india-php-full-stack-course.jpg',
    'images/scope-india-python-full-stack-course.jpg',
    'images/scope-india-software-testing-manual-automation-course.jpg',

  ];
  List <Widget> a = [
  ];


  var size,height,width;
  var index = 0;

  @override
  Widget build(BuildContext context) {


    size = MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Container(
          height: height/10,
          child: Image(image: AssetImage("logos/scope-india-logo-home-page.png"),
          ),
        ),
        backgroundColor: Color.fromARGB(200, 0,0,205),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  height: height/2),
              items: courseimages.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Image(image: AssetImage("$i")),
                        // child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                    );
                  },
                );
              }).toList(),
            ),

            Container(
              height: height/15,
              child: Image(image: AssetImage("images/5star.png")),

            ),
            Container(
              child: Text(
                textAlign: TextAlign.center,
                "SCOPE INDIA, your career partner!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(200, 0,0,205),
              ),
              ),
            ),
            Container(
              child: Text(
                textAlign: TextAlign.center,
                "One of India's best Training destinations for Software, Networking, and Cloud Computing courses with 17 years of Industrial experience.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(200, 0,0,205),
                ),
              ),
            ),
            SizedBox(
              height: height/35,
            ),
            Container(
              child: Text(
                textAlign: TextAlign.center,
                "Software, Networking, and Cloud Professional Education Centre in Kerala and Tamil Nadu from Suffix E Solutions with WORKING PROFESSIONALS oriented on-the-job TRAINING model. SCOPE INDIA provides courses for Software Programming in Python (Data Science | Artificial Intelligence | Machine Learning | Deep Learning, Data Analytics), Java, PHP, .Net, MERN,Software Testing Manual and Automation, Cloud Computing (AWS | Azure), Server Administration (MicroSoft MCSE | Linux RHCE), Networking (CCNA), DevOps, Mobile App Development in Flutter, and Digital Marketing. A Training with a 100% Trusted Job-Based Internship Model. SCOPE INDIA has a Strong Placement Cell that provides jobs to thousands of students annually. We assure you, you won't regret it after training from SCOPE INDIA!This is how SCOPE INDIA can support both newbies and those experienced in the industry to upgrade their skills.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
            ),
            BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(
                    Icons.health_and_safety
                ),
                    label: "BMI APP"
                ),
                BottomNavigationBarItem(icon: Icon(
                    Icons.emoji_food_beverage_outlined
                ),
                    label: "FOOD APP"
                ),
                BottomNavigationBarItem(icon: Icon(
                    Icons.face
                ),
                    label: "Face"
                ),
              ],
              backgroundColor: Color.fromARGB(200, 0,0,205),
              unselectedItemColor: Colors.black,
              selectedItemColor: Colors.white,
              onTap: (x) {
                setState(() {
                  index=x;
                }
                );
              },
              currentIndex: index,

            ),


          ],
        ),
      ),
    );
  }
}
