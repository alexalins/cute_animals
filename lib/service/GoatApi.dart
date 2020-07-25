import 'dart:convert';

import 'package:http/http.dart' as http;

const baseUrl = "https://placegoat.com/";
const width = "200";
const height = "200";

class GoatApi {
  Future<String> getGoat() async {
    String url = baseUrl+width+"/"+height;
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonresponse = json.decode(response.body);
      print(jsonresponse);
      return response.body;
    } else {
      throw Exception('Failed to load Fox');
    }
  }
}