import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/data/model/news_response.dart';

class NewsApi {
  //https://newsapi.org/v2/everything?q=bitcoin&apiKey=b17ffea0c5ce4a45b62a87b237ebb938
  static String baseUrl = 'newsapi.org';
  static String apiKey = 'b17ffea0c5ce4a45b62a87b237ebb938';
  static Future<NewsResponse> getNews() async {
    Uri url = Uri.https(baseUrl, '/v2/everything', {
      'q': 'bitcoin',
      'apiKey': apiKey,
    });

    var response = await http.get(url);
    var responseBody = response.body;
    var json = jsonDecode(responseBody);

    return NewsResponse.fromJson(json);
  }
}
