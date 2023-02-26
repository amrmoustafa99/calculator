import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _calcState();
}

class _calcState extends State<Calculator> {
  String output = "0";
  String _output = "0";
  late double num1;
  late double num2;
  late String operand;

  void clickBtn(String buttonText) {
    if (buttonText == "C") {
      _output = "0";
      num1 = 0;
      num2 = 0;
      operand = "";
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "x" ||
        buttonText == "/") {
      num1 = double.parse(output);
      operand = buttonText;
      _output = "0";
    } else if (buttonText == ".") {
      if (_output.contains(".")) {
        print("Already contains decimal");
        return;
      } else {
        _output = _output + buttonText;
      }
    } else if (buttonText == "=") {
      num2 = double.parse(output);
      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "x") {
        _output = (num1 * num2).toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }

      num1 = 0;
      num2 = 0;
      operand = "";
    } else {
      _output = _output + buttonText;
    }

    print(_output);
    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Calculator",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 25),
              child: Container(
                height: 210,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white70,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                    )
                  ],
                ),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        output,
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 2, 10, 0),
              child: Container(
                height: 410,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white70,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildLargeButton("C", () => clickBtn("C")),
                        SizedBox(
                          width: 10,
                        ),
                        buildLargeButton("=", () => clickBtn("=")),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildButton("7", () => clickBtn("7")),
                        buildButton("8", () => clickBtn("8")),
                        buildButton("9", () => clickBtn("9")),
                        buildButton("x", () => clickBtn("x")),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildButton("4", () => clickBtn("4")),
                        buildButton("5", () => clickBtn("5")),
                        buildButton("6", () => clickBtn("6")),
                        buildButton("-", () => clickBtn("-")),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildButton("1", () => clickBtn("1")),
                        buildButton("2", () => clickBtn("2")),
                        buildButton("3", () => clickBtn("3")),
                        buildButton("+", () => clickBtn("+")),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildButton("0", () => clickBtn("0")),
                        buildButton(".", () => clickBtn(".")),
                        buildButton("%", () => clickBtn("%")),
                        buildButton("/", () => clickBtn("/")),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget buildButton(String btnText, Function function) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: MaterialButton(
        height: 70,
        minWidth: 70,
        onPressed: () => function(),
        child: Text(
          btnText,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: Colors.black),
        ),
        elevation: 5.0,
      ),
    );
  }

  Widget buildLargeButton(String btnText, Function function) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: MaterialButton(
        height: 70,
        minWidth: 155,
        onPressed: () => function(),
        child: Text(
          btnText,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        color: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.black),
        ),
        elevation: 5.0,
      ),
    );
  }
}
