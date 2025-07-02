import 'package:flutter/material.dart';
import 'package:news_app/data/model/news_response.dart';
import 'package:news_app/utils/app_colors.dart';
import 'package:news_app/widget/image_widget.dart';
import 'package:news_app/screens/home_screen.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.articles});
  final Articles articles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorG,
        title: Text(
          'News details',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),

        centerTitle: true,
      ),

      backgroundColor: AppColors.colorBackGround,

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        child: Column(
          spacing: 25,
          children: [
            ImageWidget(image: articles.urlToImage ?? image, height: 200),
            Text(
              articles.title ?? "",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: AppColors.textColor,
              ),
            ),

            Text(
              articles.description ?? "",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColors.textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
