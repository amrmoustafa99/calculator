import 'package:calculator/Screens/two_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  int cnt = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Chat")),
          SizedBox(
            height: 10,
          ),
          Center(child: Text("$cnt")),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PageTwo()));
              setState(() {
                cnt++;
              });
            },
            child: Text("hi, i'm button"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              elevation: 10,
            ),
          )
        ],
      ),
    );
  }
}
