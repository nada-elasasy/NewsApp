import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/model/article_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/categories_list_veiw.dart';
import 'package:news_app_ui_setup/widgets/news_list_veiw.dart';
import 'package:news_app_ui_setup/widgets/news_list_view_buider.dart';
import 'package:news_app_ui_setup/widgets/news_title.dart';

class HomeVeiw extends StatelessWidget {
  const HomeVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return const Newslistveiw();
  }
}

class Newslistveiw extends StatelessWidget {
  const Newslistveiw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'cloud',
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesListVeiw(),
              ),
              SliverToBoxAdapter(
                child: const SizedBox(height: 20),
              ),
              NewsListViewBuilder(
                category: 'general',
              ),
            ],
          )

          // child: Column(
          // children: [
          // CategoriesListVeiw(),
          // const SizedBox(height: 20),
          //const Expanded(
          //   child: NewsListVeiw(),
          // ),//
          // ],
          // ),
          ),
    );
  }
}
