import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/model/article_model.dart';

class NewsTitle extends StatelessWidget {
  const NewsTitle({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleModel.image ??
                  'https://images.unsplash.com/photo-1682685794700-1f3c5e7b8d4e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bmV3c3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
              height: 200,
              errorBuilder: (context, error, stackTrace) => Container(
                color: Colors.grey,
                height: 200,
                child: const Center(
                  child: Icon(
                    Icons.broken_image,
                  ),
                ),
              ),
              width: 400,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'large title should be places in this place large large title should be places in this place large',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'and here isthe descripition of the newsyou canlarge title should be places in this place large  ',
          maxLines: 2,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
