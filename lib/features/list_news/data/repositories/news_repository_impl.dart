import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:news_test_flutter/core/error/exeptioins.dart';
import 'package:news_test_flutter/core/error/failure.dart';
import 'package:news_test_flutter/features/list_news/data/datasources/news_data_sources.dart';
import 'package:news_test_flutter/features/list_news/data/models/news_model.dart';
import 'package:news_test_flutter/features/list_news/domain/entities/news.dart';
import 'package:news_test_flutter/features/list_news/domain/repositories/news_repository.dart';
import 'package:news_test_flutter/features/list_news/domain/usercases/get_news.dart';

typedef _GetModelNews = Future<List<NewsModel>> Function();

@Injectable(as: NewsRepository)
class NewsRepositoryImpl implements NewsRepository {
  final NewsDataSources newsDataSources;

  NewsRepositoryImpl({required this.newsDataSources});

  @override
  Future<Either<Failure, List<News>>> getNews(QueryParams params) async {
    return await _getNews(() => newsDataSources.getNews(params));
  }

  Future<Either<Failure, List<News>>> _getNews(
    _GetModelNews getModelNews,
  ) async {
    try {
      final remoteNews = await getModelNews();
      return Right(remoteNews);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
