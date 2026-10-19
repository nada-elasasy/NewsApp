import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/model/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';

class CategoriesListVeiw extends StatelessWidget {
  CategoriesListVeiw({
    super.key,
  });
  final List<CategoryModel> categories = [
    CategoryModel(
        imageAsseturl: 'assets/business.avif', categoryname: 'Business'),
    CategoryModel(imageAsseturl: 'assets/sports.avif', categoryname: 'sports'),
    CategoryModel(
        imageAsseturl: 'assets/entertaiment.avif',
        categoryname: 'entertaiment'),
    CategoryModel(imageAsseturl: 'assets/health.avif', categoryname: 'health'),
    CategoryModel(
        imageAsseturl: 'assets/science.avif', categoryname: 'science'),
    CategoryModel(
        imageAsseturl: 'assets/business.avif', categoryname: 'Business'),
    CategoryModel(
        imageAsseturl: 'assets/business.avif', categoryname: 'Business'),
    CategoryModel(
        imageAsseturl: 'assets/business.avif', categoryname: 'Business'),
    CategoryModel(
        imageAsseturl: 'assets/business.avif', categoryname: 'Business'),
    CategoryModel(
        imageAsseturl: 'assets/business.avif', categoryname: 'Business'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
