import 'package:flutter/material.dart';
import 'package:profileapplication/thirdscreen.dart';

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
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 300,
                  height: 45,
                  margin: EdgeInsets.only(top: 450),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.cyan.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThirdScreen()));
                    },
                    child: Text(
                      "NEXT",
                      style: TextStyle(
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
