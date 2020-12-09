import 'package:flutter/material.dart';

class nextpage extends StatefulWidget {
  @override
  _nextpageState createState() => _nextpageState();
}

class _nextpageState extends State<nextpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("NextPage"),
        ),
      ),
    );
  }
}
