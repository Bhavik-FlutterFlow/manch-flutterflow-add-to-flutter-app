import 'dart:developer';

import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://x8ki-letl-twmt.n7.xano.io/api:GgvDRi3w';

  static Future<dynamic> get(String endpoint) async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint'));

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load data');
    }
  }

  static Future<dynamic> post(String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$baseUrl/$endpoint'),
      body: data,
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      log(response.body);
      throw Exception('Failed to post data');
    }
  }
}
