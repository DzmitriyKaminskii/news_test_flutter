import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:news_test_flutter/core/error/exeptioins.dart';
import 'package:news_test_flutter/features/list_news/data/models/news_model.dart';
import 'package:news_test_flutter/features/list_news/domain/usercases/get_news.dart';

abstract class NewsDataSources {
  Future<List<NewsModel>> getNews(QueryParams params);
}

@Injectable(as: NewsDataSources)
class NewsDataSourcesImpl implements NewsDataSources {
  final http.Client client;

  final String _scheme = 'https';
  final String _host = 'newsapi.org';
  final String _apiNameParam = 'apiKey';
  final String _apiKeyParam = 'cfe72b0a5e114f1b9bf03dbff46a094c';
  final String _headlinePath = 'v2/top-headlines';
  final String _everythingPath = 'v2/everything';
  final String _searchParamName = 'q=';
  final String _countryParamKey = 'country';
  final String _countryParamValue = 'us';

  NewsDataSourcesImpl({required this.client});

  @override
  Future<List<NewsModel>> getNews(QueryParams params) {
    return _getNewsFromUrl(_getQueryPath(params));
  }

  Future<List<NewsModel>> _getNewsFromUrl(Uri url) async {
    final response = await client.get(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      var source = jsonDecode(response.body);

      var newsSource = source['articles'] as List;
      return newsSource
          .map((e) => NewsModel.fromJson(e))
          .toList(growable: false);
    } else {
      throw ServerException();
    }
  }

  Uri _getQueryPath(QueryParams params) {
    Map<String, String> qParams = {};
    qParams[_searchParamName] = params.searchValue;
    qParams[_countryParamKey] = _countryParamValue;
    qParams[_apiNameParam] = _apiKeyParam;

    return Uri(
        scheme: _scheme,
        host: _host,
        path: params.isHeadLines ? _headlinePath : _everythingPath,
        queryParameters: qParams);
  }
}
