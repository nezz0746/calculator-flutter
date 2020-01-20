import 'dart:ui';

import 'package:calculator/widgets/padButton.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int previousNumber = 0;
  int currentNumber = 0;
  String currentOperation = null;

  add(a, b) {
    setState(() {
      currentNumber = a + b;
    });
  }

  input(number) {
    setState(() {
      currentNumber = (currentNumber * 10) + number;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(currentNumber);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  child: Text(
                    currentNumber.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 65,
                      fontWeight: FontWeight.w200
                    ),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3)),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.bottomRight,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            PadButton(
                              text: 'C',
                            ),
                            PadButton(
                              text: '+/-',
                            ),
                            PadButton(
                              text: '%',
                            ),
                            PadButton(
                              text: '÷',
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            PadButton(
                              text: '7',
                              appendNumber: input,
                            ),
                            PadButton(
                              text: '8',
                              appendNumber: input,
                            ),
                            PadButton(
                              text: '9',
                              appendNumber: input,
                            ),
                            PadButton(
                              text: 'x',
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            PadButton(
                              text: '4',
                              appendNumber: input,
                            ),
                            PadButton(
                              text: '5',
                              appendNumber: input,
                            ),
                            PadButton(
                              text: '6',
                              appendNumber: input,
                            ),
                            PadButton(
                              text: '-',
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            PadButton(
                              text: '1',
                              appendNumber: input,
                            ),
                            PadButton(
                              text: '2',
                              appendNumber: input,
                            ),
                            PadButton(
                              text: '3',
                              appendNumber: input,
                            ),
                            PadButton(
                              text: '+',
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            PadButton(
                              text: '0',
                              appendNumber: input,
                            ),
                            PadButton(
                              text: '',
                            ),
                            PadButton(
                              text: ',',
                            ),
                            PadButton(
                              text: '=',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3)),
                  width: MediaQuery.of(context).size.width,
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            // border: Border.all(color: Colors.red, width: 3)
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}
