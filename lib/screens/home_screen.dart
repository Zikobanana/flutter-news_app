import 'package:flutter/material.dart';
import 'package:news_app/data/news_api.dart';
import 'package:news_app/utils/app_colors.dart';
import 'package:news_app/widget/news_item_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.coloroPrimary,
        title: Text(
          'News',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),

        centerTitle: true,
      ),

      backgroundColor: AppColors.colorBackGround,

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: NewsApi.getNews(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: AppColors.textColor,
                      ),
                    );
                  }
                  var listOfArticles = snapshot.data?.articles ?? [];
                  return ListView.builder(
                    itemBuilder: (context, index) =>
                        NewsItemWidget(articles: listOfArticles[index]),
                    itemCount: listOfArticles.length,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String image =
    'https://i.pinimg.com/736x/9b/da/03/9bda03340b1c65ab50f1a0a279455558.jpg';
