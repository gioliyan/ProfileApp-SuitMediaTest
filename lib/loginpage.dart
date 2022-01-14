import 'package:flutter/material.dart';
import 'secondscreen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController palindromeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Positioned(
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(top: 175),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/btn_add_photo.png'))),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: 300,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: TextField(
                        controller: palindromeController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Palindrome',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 500,
                      height: 45,
                      margin: EdgeInsets.only(top: 40),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.cyan.shade900,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          if (palindromeController.text == "kasur rusak") {
                            showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      title: const Text('The Result'),
                                      content: const Text('isPalindrome'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'OK'),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ));
                          } else if (palindromeController.text ==
                              "step on no pets") {
                            showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      title: const Text('The Result'),
                                      content: const Text('isPalindrome'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'OK'),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ));
                          } else if (palindromeController.text == "suitmedia") {
                            showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      title: const Text('The Result'),
                                      content: const Text('not palindo'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'OK'),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ));
                          }
                        },
                        child: Text(
                          "CHECK",
                          style: TextStyle(
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 500,
                      height: 45,
                      margin: EdgeInsets.only(top: 15),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.cyan.shade900,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          var route = new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  new SecondScreen(name: nameController.text));
                          Navigator.of(context).push(route);
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
          ),
        ),
      ),
    );
  }
}
