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
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                      height: height/35,
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                          autoPlay: true,
                          height: 200),
                      items: courseimages.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(

                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Image(image: AssetImage("$i")),
                              // child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                            );
                          },
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: height/35,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("images/whitebg.jpg"),
                        fit: BoxFit.cover
                        ),
                      ),
                      height: height/4.5,
                      width: width/1.2,

                    ),
                    SizedBox(
                      height: height/35,
                    ),
                    Container(
                      height: height/12,
                      child: Image(image: AssetImage("images/5star.png")),

                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Google 4.9 * Rated Institute",
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.black,
                      ),
                    ),

                    Text(
                        textAlign: TextAlign.center,
                        "SCOPE INDIA, your career partner!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(200, 0,0,139),
                        ),
                      ),

                    Text(
                        textAlign: TextAlign.center,
                        "One of India's best Training destinations for Software, Networking, and Cloud Computing courses with 17 years of Industrial experience.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromARGB(200, 0,0,139),
                        ),
                      ),

                    SizedBox(
                      height: height/35,
                    ),
                    Text(
                        textAlign: TextAlign.center,
                        "Software, Networking, and Cloud Professional Education Centre in Kerala and Tamil Nadu from Suffix E Solutions with WORKING PROFESSIONALS oriented on-the-job TRAINING model. SCOPE INDIA provides courses for Software Programming in Python (Data Science | Artificial Intelligence | Machine Learning | Deep Learning, Data Analytics), Java, PHP, .Net, MERN,Software Testing Manual and Automation, Cloud Computing (AWS | Azure), Server Administration (MicroSoft MCSE | Linux RHCE), Networking (CCNA), DevOps, Mobile App Development in Flutter, and Digital Marketing. A Training with a 100% Trusted Job-Based Internship Model. SCOPE INDIA has a Strong Placement Cell that provides jobs to thousands of students annually. We assure you, you won't regret it after training from SCOPE INDIA!This is how SCOPE INDIA can support both newbies and those experienced in the industry to upgrade their skills.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                    SizedBox(
                      height: height/35,
                    ),
                    MaterialButton(onPressed: () {
                      setState(() {
                        
                      });
                    },
                      child: Text("Recent Placement",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                      color: Color.fromARGB(240, 138,43,226),
                      minWidth: width/1.2,
                      splashColor: Colors.white,
                    ),
                    MaterialButton(onPressed: () {
                      setState(() {

                      });
                    },
                      child: Text("Courses",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Color.fromARGB(240, 32,178,170),
                      minWidth: width/1.2,
                      splashColor: Colors.white,
                    ),
                    MaterialButton(onPressed: () {
                      setState(() {

                      });
                    },
                      child: Text("Register Now!",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Color.fromARGB(240, 60,179,113),
                      minWidth: width/1.2,
                      splashColor: Colors.white,
                    ),
                    MaterialButton(onPressed: () {
                      setState(() {

                      });
                    },
                      child: Text("Chat on Whatsapp",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Color.fromARGB(240, 34,139,34),
                      minWidth: width/1.2,
                      splashColor: Colors.white,
                    ),
                    SizedBox(
                      height:height/35,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Image(image: AssetImage("logos/snowpark-home-icon1.png")),
                              Text("Training",)
                            ],
                          ),
                          Column(
                            children: [
                              Image(image: AssetImage("logos/snowpark-home-icon2.png"),),
                              Text("Internship",)
                            ],
                          ),
                          Column(
                            children: [
                              Image(image: AssetImage("logos/snowpark-home-icon3.png"),
                              height: height/12.4,
                              ),
                              Text("Grooming",)
                            ],
                          ),
                          Column(
                            children: [
                              Image(image: AssetImage("logos/snowpark-home-icon4.png")),
                              Text("Placement",)
                            ],
                          ),
                          
                        ],
                      ),
                      color: Color.fromARGB(255,220,220,220),
                      height: height/4.5,
                    ),
                    Container(
                      height: height/3,
                      color: Color.fromARGB(255, 0,0,139),
                    ),


                  ],

                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //
      //       CarouselSlider(
      //         options: CarouselOptions(
      //             autoPlay: true,
      //             height: height/2),
      //         items: courseimages.map((i) {
      //           return Builder(
      //             builder: (BuildContext context) {
      //               return Container(
      //                   width: MediaQuery.of(context).size.width,
      //                   margin: EdgeInsets.symmetric(horizontal: 5.0),
      //                   child: Image(image: AssetImage("$i")),
      //                   // child: Text('text $i', style: TextStyle(fontSize: 16.0),)
      //               );
      //             },
      //           );
      //         }).toList(),
      //       ),
      //
      //       Container(
      //         height: height/15,
      //         child: Image(image: AssetImage("images/5star.png")),
      //
      //       ),
      //       Container(
      //         child: Text(
      //           textAlign: TextAlign.center,
      //           "SCOPE INDIA, your career partner!",
      //         style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //           fontSize: 20,
      //           color: Color.fromARGB(200, 0,0,139),
      //         ),
      //         ),
      //       ),
      //       Container(
      //         child: Text(
      //           textAlign: TextAlign.center,
      //           "One of India's best Training destinations for Software, Networking, and Cloud Computing courses with 17 years of Industrial experience.",
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             fontSize: 15,
      //             color: Color.fromARGB(200, 0,0,139),
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         height: height/35,
      //       ),
      //       Container(
      //         child: Text(
      //           textAlign: TextAlign.center,
      //           "Software, Networking, and Cloud Professional Education Centre in Kerala and Tamil Nadu from Suffix E Solutions with WORKING PROFESSIONALS oriented on-the-job TRAINING model. SCOPE INDIA provides courses for Software Programming in Python (Data Science | Artificial Intelligence | Machine Learning | Deep Learning, Data Analytics), Java, PHP, .Net, MERN,Software Testing Manual and Automation, Cloud Computing (AWS | Azure), Server Administration (MicroSoft MCSE | Linux RHCE), Networking (CCNA), DevOps, Mobile App Development in Flutter, and Digital Marketing. A Training with a 100% Trusted Job-Based Internship Model. SCOPE INDIA has a Strong Placement Cell that provides jobs to thousands of students annually. We assure you, you won't regret it after training from SCOPE INDIA!This is how SCOPE INDIA can support both newbies and those experienced in the industry to upgrade their skills.",
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             fontSize: 10,
      //             color: Colors.black,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
