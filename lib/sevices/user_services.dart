import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/user_model.dart';

class homerepo {
  Future<Modeljson?> getHomecard() async {
    const String baseurl = "https://reqres.in/api/users?page=2";
    var url = Uri.parse(baseurl);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonbody = Modeljson.fromJson(jsonDecode(response.body));
      return jsonbody;
    } else {
      print("istek başrısız");
    }
  }
}
