import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/model/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> gettopheadlines({required String category}) async {
    return await Future.delayed(const Duration(seconds: 2), () async {
      try {
        Response response = await dio.get(
            'https://newsapi.org/v2/top-headlines?apiKey=9fe35a74c1764043a90cfa6590518daa&country=us&category=$category');
        Map<String, dynamic> jsonData = response.data;
        List<dynamic> articles = jsonData['articles'];

        List<ArticleModel> articleList = [];
        for (var article in articles) {
          ArticleModel articleModel = ArticleModel(
              image: article['urlToImage'],
              title: article['title'],
              subtitle: article['description']);
          articleList.add(articleModel);
        }
        return articleList;
      } catch (e) {
        return []; // TODO
      }
    });
  }
}
