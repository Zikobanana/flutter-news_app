import 'package:flutter/material.dart';
import 'package:news_app/data/model/news_response.dart';
import 'package:news_app/screens/details_screen.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/utils/app_colors.dart';
import 'package:news_app/widget/image_widget.dart';

class NewsItemWidget extends StatelessWidget {
  const NewsItemWidget({super.key, required this.articles});
  final Articles articles;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailsScreen(articles: articles),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(8),
        color: Colors.transparent,

        child: Column(
          spacing: 15,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          ///This is a chatGPT link explains
          ///what the "mainAxisSize" and "crossAxisAlignment" do
          ///https://chatgpt.com/share/685c63c1-c024-8004-beeb-152b45c26e0e
          children: [
            ImageWidget(image: articles.urlToImage ?? image),
            Text(
              articles.title ?? "TTTTTTTTT",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.textColor,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
