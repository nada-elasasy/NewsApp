import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/model/article_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/news_title.dart';

class NewsListVeiw extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListVeiw({super.key, required this.articles});

//indicator
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 22),
          child: NewsTitle(articleModel: articles[index]),
        );
      },
    ));
  }
}
