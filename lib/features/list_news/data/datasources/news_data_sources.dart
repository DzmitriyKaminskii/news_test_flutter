import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:news_test_flutter/core/error/exeptioins.dart';
import 'package:news_test_flutter/features/list_news/data/models/news_model.dart';
import 'package:news_test_flutter/features/list_news/domain/usercases/get_news.dart';

abstract class NewsDataSources {
  Future<Iterable<NewsModel>?> getNews(QueryParams params);
}

@Injectable(as: NewsDataSources)
class NewsDataSourcesImpl implements NewsDataSources {
  final http.Client client;

  final String _scheme = 'https';
  final String _host = 'newsapi.org/v2';
  final String _apiKey = 'apiKey=cfe72b0a5e114f1b9bf03dbff46a094c';
  final String _headlinePath = 'top-headlines?';
  final String _everythingPath = 'everything?';
  final String _searchParamName = 'q=';

  NewsDataSourcesImpl({required this.client});

  @override
  Future<Iterable<NewsModel>?> getNews(QueryParams params) {
    var path = StringBuffer(_headlinePath);
    path.write(_headlinePath);
    path.write(_apiKey);

    final query = Uri(scheme: _scheme, host: _host, path: path.toString());

    return _getNewsFromUrl(query);
  }

  Future<Iterable<NewsModel>> _getNewsFromUrl(Uri url) async {
    final response = await client.get(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      var source = jsonDecode(response.body);
      List<Map<String, dynamic>> newsSource = source['articles'];

      return newsSource.map((e) => NewsModel.fromJson(e));
      ;
    } else {
      throw ServerException();
    }
  }
}
