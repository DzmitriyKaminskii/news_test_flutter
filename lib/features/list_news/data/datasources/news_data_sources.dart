import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:news_test_flutter/core/error/exeptioins.dart';
import 'package:news_test_flutter/features/list_news/data/models/news_model.dart';
import 'package:news_test_flutter/features/list_news/domain/usercases/get_news.dart';
import 'package:news_test_flutter/features/list_news/shared/tab_bar_enum.dart';

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
  final String _searchParamName = 'q=';
  final String _languageParamKey = 'language';
  final String _languageParamValue = 'en';
  final String _domainsParamsKey = 'domains';
  final String _domainsParamsValue = 'techcrunch.com,thenextweb.com';

  NewsDataSourcesImpl({required this.client});

  @override
  Future<List<NewsModel>> getNews(QueryParams params) {
    var test = _getQueryPath(params);
    log("URL: ${test.toString()}");
    return _getNewsFromUrl(test);
  }

  Future<List<NewsModel>> _getNewsFromUrl(Uri url) async {
    final response = await client.get(url, headers: {
      'Content-Type': 'application/json',
    });

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
    qParams[_domainsParamsKey] = params.tab.path;

    switch (params.tab) {
      case TabBarEnum.topHeadLines:
        qParams[_languageParamKey] = _languageParamValue;
        break;
      case TabBarEnum.everything:
        qParams[_domainsParamsKey] = _domainsParamsValue;
        break;
    }

    qParams[_apiNameParam] = _apiKeyParam;

    return Uri(
        scheme: _scheme,
        host: _host,
        path: params.tab.path,
        queryParameters: qParams);
  }
}
