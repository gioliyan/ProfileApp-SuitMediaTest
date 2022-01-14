import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:profileapplication/models/data.dart';

class HttpService {
  final String baseUrl = 'https://reqres.in/api/users?page=2';

  Future<List> getListData() async {
    final String uri = baseUrl;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("sukses");
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['results'];
      List datas = moviesMap.map((i) => Data.fromJson(i)).toList();
      return datas;
    } else {
      print("fail");
      return null;
    }
  }
}
