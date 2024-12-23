import 'dart:convert';
import 'newsapi.dart';
import 'package:http/http.dart' as http;

class fetchrepocat {

  Future<newsapi> fetchNewscat(String category) async {
    print("Category: $category");

    String url = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=d3de3b51ddb84326ad643b40007bdb46';

    // Adjust the URL based on the category
    if (category != null && category.isNotEmpty) {
      url = 'https://newsapi.org/v2/top-headlines?category=$category&apiKey=d3de3b51ddb84326ad643b40007bdb46';
    }

    var response = await http.get(Uri.parse(url));

    print(response.body);

    if (response.statusCode == 200) {
      return newsapi.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load news');
    }
  }
}
