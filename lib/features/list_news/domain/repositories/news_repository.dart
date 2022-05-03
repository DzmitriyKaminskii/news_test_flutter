import 'package:dartz/dartz.dart';
import 'package:news_test_flutter/core/error/failure.dart';
import 'package:news_test_flutter/features/list_news/domain/entities/news.dart';
import 'package:news_test_flutter/features/list_news/domain/usercases/get_news.dart';

abstract class NewsRepository {
  Future<Either<Failure, List<News>>> getNews(QueryParams params);
}
