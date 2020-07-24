import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cute_animals/model/Cat.dart';

const baseUrl = "https://api.thecatapi.com/v1/images/search";
const hearders = "?api_key=";
const token = "37c0802f-0624-4f78-8c27-5ed9078f21a8";

class CatApi {
  Future<Cat> getCat() async {
    String url = baseUrl + hearders + token;
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonresponse = json.decode(response.body);
      //pegando so o primeiro pq vem um array
      return Cat.fromJson(jsonresponse[0]);
    } else {
      throw Exception('Failed to load Cat');
    }
  }
}
