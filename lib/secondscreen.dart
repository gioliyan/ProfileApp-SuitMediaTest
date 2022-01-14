import 'package:flutter/material.dart';
import 'loginpage.dart';

class SecondScreen extends StatefulWidget {
  final String name;

  SecondScreen({Key key, this.name}) : super(key: key);
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Second Screen',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 15, left: 15),
            child: Text(
              'Welcome',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, left: 15),
            child: Text(
              "${widget.name}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      )),
    );
  }
}
