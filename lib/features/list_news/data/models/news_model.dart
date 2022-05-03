import 'package:news_test_flutter/features/list_news/domain/entities/news.dart';

class NewsModel extends News {
  const NewsModel(
      {required title,
      required description,
      required sources,
      required imageScr})
      : super(
            title: title,
            description: description,
            sources: sources,
            imageScr: imageScr);

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> source = json['source'];
    return NewsModel(
        title: json['title'],
        description: json['description'],
        sources: source['name'],
        imageScr: json['urlToImage']);
  }
}
