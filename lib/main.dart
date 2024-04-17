import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AppBar, BuildContext, Colors, FloatingActionButton, Icons, LinearProgressIndicator, MaterialApp, Scaffold, StatelessWidget, Text, TextStyle, Widget, runApp;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // createState method
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
class _MyFirstAppState extends State<MyApp>{
  bool _loading = false;
  late double _progressValue;

  @override
  void initState() {
    _loading = false;
    _progressValue =0.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App", style: TextStyle(color: Colors.black),),centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                LinearProgressIndicator(value:23),
                Text('23 %', style: TextStyle(color: Colors.purple, fontSize: 40),),
                Text("press the Button", style: TextStyle(color: Colors.pink, fontSize: 35),)
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.confirmation_num_sharp),
        ),
      ),
    );
  }
}