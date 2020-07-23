import 'dart:convert';

import 'package:cute_animals/model/Dog.dart';
import 'package:http/http.dart' as http;

const baseUrl = "https://dog.ceo/api/breeds/image/random";

class DogApi {
  Future<Dog> getDog() async {
    final response = await http.get(baseUrl);
    if (response.statusCode == 200) {
      return Dog.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load Dog');
    }
  }
}
