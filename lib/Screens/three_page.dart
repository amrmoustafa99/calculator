import 'package:calculator/Screens/page_one.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: GestureDetector(
                  onLongPressUp: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => PageOne()));
                  },
                  child: Text("Cals")))
        ],
      ),
    );
  }
}
