import 'package:flutter/material.dart';
import 'service/http_service.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int datasCount;
  List datas;
  HttpService service;

  Future initialize() async {
    datas = [];
    datas = await service.getListData();
    setState(() {
      datasCount = datas.length;
      datas = datas;
    });
  }

  @override
  void initState() {
    service = HttpService();
    initState();
    super.initState();
  }

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
            'Third Screen',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: (this.datasCount == null) ? 0 : this.datasCount,
            itemBuilder: (context, int position) {
              return Card(
                color: Colors.white,
                elevation: 2.0,
                child: ListTile(
                  title: Text(
                      datas[position].fristname + datas[position].lastname),
                  subtitle: Text(datas[position].email),
                ),
              );
            }));
  }
}
