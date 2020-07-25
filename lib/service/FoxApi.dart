import 'dart:convert';
import 'package:cute_animals/model/Fox.dart';
import 'package:http/http.dart' as http;

const baseUrl = "https://randomfox.ca/floof/";

class FoxApi {
  Future<Fox> getFox() async {
    final response = await http.get(baseUrl);
    if (response.statusCode == 200) {
      return Fox.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load Fox');
    }
  }
}
