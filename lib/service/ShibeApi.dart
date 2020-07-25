import 'dart:convert';

import 'package:http/http.dart' as http;

const baseUrl = "http://shibe.online/api/shibes";

class ShibeApi {
  Future<String> getShibe() async {
    String url = baseUrl;
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonresponse = json.decode(response.body);
      //pegando so o primeiro pq vem um array
      print(jsonresponse[0]);
      return jsonresponse[0];
    } else {
      throw Exception('Failed to load Cat');
    }
  }
}