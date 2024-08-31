import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
  final videoURL = "https://www.youtube.com/watch?v=YMx8Bbev6T4";
  var namecontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {

    late YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'https://www.youtube.com/shorts/eIFj4nYNYbw?feature=share',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: true,
      ),
    );
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
              background: Image.asset("images/blue_bg.jpg",
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
                      width: width/1.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: YoutubePlayer(
                              controller: _controller,
                              showVideoProgressIndicator: true,
                            ),
                            height: height/6.5,
                            width: width/2.5,
                            color: Colors.red,
                          ),
                          Column(
                            children: [
                              Text("SCOPE INDIA \n is open 365 days a year",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: Color.fromARGB(200, 0,0,139),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text("We are open 7 days 24 hrs \n to talk to you and listen to your queries.",
                                style: TextStyle(
                                  fontSize: 8,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text("GET A FREE CALL BACK",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 0,128,0),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: height/200,
                              ),
                              Container(
                                child: TextFormField(
                                  controller: namecontroller,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255,34, 139, 34),
                                      ),
                                    ),
                                    labelStyle: TextStyle(
                                        fontSize: 10
                                    ),
                                    labelText: "Enter Your Name",
                                  ),
                                ),
                                height: height/55,
                                width: width/2.5,
                              ),
                              SizedBox(
                                height: height/200,
                              ),
                              Container(
                                child: TextFormField(
                                  controller: namecontroller,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255,34, 139, 34),
                                      ),
                                    ),
                                    labelStyle: TextStyle(
                                      fontSize: 10
                                    ),
                                    labelText: "Enter Your Num",
                                  ),
                                ),
                                height: height/55,
                                width: width/2.5,
                              ),
                              SizedBox(
                                height: height/200,
                              ),
                              Container(
                                child: MaterialButton(onPressed: () {
                                  setState(() {

                                  });
                                },
                                  color: Color.fromARGB(255, 60,179,113),
                                  child: Text("Call Me",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10
                                  ),
                                  ),
                                ),
                                height: height/55,
                                width: width/2.5,
                              ),

                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),

                        ],
                      ),

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
                          Container(
                            child: Column(
                              children: [
                                Image(image: AssetImage("logos/snowpark-home-icon1.png")),
                                Text("Training",),
                                Text("You are trained under Suffix E Solutions working professionals, on-the-job training model",
                                style: TextStyle(
                                  fontSize: 6
                                ),
                                ),
                              ],
                            ),
                            width: width/5,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Image(image: AssetImage("logos/snowpark-home-icon2.png"),),
                                Text("Internship",),
                                Text("After course completion, you will be proceeded to live projects with a 6 months experience certificate",
                                  style: TextStyle(
                                      fontSize: 6
                                  ),
                                ),
                              ],
                            ),
                            width: width/5,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Image(image: AssetImage("logos/snowpark-home-icon3.png"),
                                height: height/12.4,
                                ),
                                Text("Grooming",),
                                Text("CV Preparation, Interview Prepartion, and personality Development",
                                  style: TextStyle(
                                      fontSize: 6
                                  ),
                                ),
                              ],
                            ),
                            width: width/5,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Image(image: AssetImage("logos/snowpark-home-icon4.png")),
                                Text("Placement",),
                                Text("Gives 100% FREE placement support to all our fellow techies through SCOPE INDIA's Placement Cell ",
                                  style: TextStyle(
                                      fontSize: 6
                                  ),
                                ),
                              ],
                            ),
                            width: width/5,
                          ),

                        ],
                      ),
                      color: Color.fromARGB(255,220,220,220),
                      height: height/4.5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/dark_blue_gradient_background.jpg"),
                          fit: BoxFit.cover
                        ),
                      ),
                      height: height/2,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: height/14,
                                  ),
                                  Text("1000+",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 0,191,255),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                  Container(
                                    child: Text("STUDENTS ARE \n TRAINED EVERY YEAR",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                    width: width/3,
                                  ),
                                  
                                ],
                              ),
                              Column(
                                children: [
                                  Text("30+",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 0,191,255),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    child: Text("COMPUTER COURSES",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    width: width/3,
                                  ),

                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: height/14,
                                  ),
                                  Text("95%",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 0,191,255),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    child: Text("STUDENTS ARE GETTING \n PLACED EVERY YEAR",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    width: width/3,
                                  ),

                                ],
                              ),
                            ],
                            mainAxisAlignment:MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                          Container(
                              child: Image(
                                  image: AssetImage(
                                      "logos/scope-india-logo-home-page.png",
                                  ),
                                width: width/2,
                              ),
                          ),
                          Text("Center for Software, Networking, & Cloud Education",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: height/55,
                          ),
                          Text("Kerala: Technopark TVM | Thampanoor TVM | Kaloor Kochi, Tamil Nadu: Distillery Road | Palace Road Nagercoil",
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.white,
                          ),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                              child: Image(
                                  image: AssetImage("logos/iso_iaflogo.png"),
                              ),
                            width: width/2,
                          ),
                          Text("An ISO 9001:2015 Certified Company",
                            style: TextStyle(
                              fontSize: 8,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text("All Rights Reserved Suffix E Solutions © 2007-2024",
                            style: TextStyle(
                              fontSize: 8,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),

                        ],
                      ),
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
