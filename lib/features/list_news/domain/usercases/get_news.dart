import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:news_test_flutter/core/error/failure.dart';
import 'package:news_test_flutter/core/usercases/usercase.dart';
import 'package:news_test_flutter/features/list_news/domain/entities/news.dart';
import 'package:news_test_flutter/features/list_news/domain/repositories/news_repository.dart';

@injectable
class GetNews implements UseCase<List<News>, QueryParams> {
  final NewsRepository repository;

  GetNews(this.repository);

  @override
  Future<Either<Failure, List<News>>> call(QueryParams params) async {
    return await repository.getNews(params);
  }
}

class QueryParams extends Equatable {
  final String searchValue;
  final bool isHeadLines;

  const QueryParams({this.searchValue = '', this.isHeadLines = true});

  @override
  List<Object?> get props => [searchValue];
}
