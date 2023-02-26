import 'package:calculator/Screens/page_one.dart';
import 'package:calculator/Screens/three_page.dart';
import 'package:calculator/Screens/two_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Week_7 extends StatelessWidget {
  const Week_7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.chat),
              ),
              Tab(
                icon: Icon(Icons.circle_outlined),
              ),
              Tab(
                icon: Icon(Icons.call_sharp),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [PageOne(), PageTwo(), PageThree()],
        ),
      ),
    );
  }
}
