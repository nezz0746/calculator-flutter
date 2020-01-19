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
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  child: Text('data'),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3)),
                  width: MediaQuery.of(context).size.width,
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
                              text: 'AC',
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
                            ),
                            PadButton(
                              text: '8',
                            ),
                            PadButton(
                              text: '9',
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
                            ),
                            PadButton(
                              text: '5',
                            ),
                            PadButton(
                              text: '6',
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
                            ),
                            PadButton(
                              text: '2',
                            ),
                            PadButton(
                              text: '3',
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
