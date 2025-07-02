import 'package:flutter/material.dart';
import 'package:news_app/data/news_api.dart';
import 'package:news_app/screens/home_screen.dart';

void main() {
  NewsApi.getNews();
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NewsApp',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
