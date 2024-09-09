import 'package:flutter/material.dart';
import 'package:scopeindiaapp/courses.dart';
import 'package:scopeindiaapp/homepage.dart';
import 'package:scopeindiaapp/homes.dart';
import 'package:scopeindiaapp/placementcell.dart';

class sample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  var size,height,width;

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
            expandedHeight: 100.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/snowpark-mount.jpg",
                fit: BoxFit.cover,
              ),
              centerTitle: true,
              title: Image.asset("logos/scope-india-logo-home-page.png",
                scale: 2.4,
              ),
            ),
            bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
            ],
          ),
          ),
          // SliverAppBar(
          //   pinned: true,
          //   expandedHeight: 200.0,
          //   flexibleSpace: FlexibleSpaceBar(
          //     title: Text('SliverAppBar with Tabs'),
          //
          //   ),
          //   bottom: TabBar(
          //     controller: _tabController,
          //     tabs: [
          //       Tab(text: 'Tab 1'),
          //       Tab(text: 'Tab 2'),
          //       Tab(text: 'Tab 3'),
          //     ],
          //   ),
          // ),
          SliverFillRemaining(
            fillOverscroll: true,
            hasScrollBody: true,
            child: TabBarView(
              controller: _tabController,
              children: [
                homePage(),courses(),sam()
              ],
            ),
          ),
        ],
      ),
    );
  }
}