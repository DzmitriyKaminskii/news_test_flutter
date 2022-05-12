// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import 'features/list_news/data/datasources/news_data_sources.dart' as _i3;
import 'features/list_news/data/repositories/news_repository_impl.dart' as _i6;
import 'features/list_news/domain/repositories/news_repository.dart' as _i5;
import 'features/list_news/domain/usercases/get_news.dart' as _i8;
import 'features/list_news/presentation/bloc/list_news/list_news_bloc.dart'
    as _i9;
import 'features/list_news/presentation/bloc/search/search_bloc.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.NewsDataSources>(
      () => _i3.NewsDataSourcesImpl(client: get<_i4.Client>()));
  gh.factory<_i5.NewsRepository>(() =>
      _i6.NewsRepositoryImpl(newsDataSources: get<_i3.NewsDataSources>()));
  gh.factory<_i7.SearchBloc>(() => _i7.SearchBloc());
  gh.factory<_i8.GetNews>(() => _i8.GetNews(get<_i5.NewsRepository>()));
  gh.factory<_i9.ListNewsBloc>(
      () => _i9.ListNewsBloc(getNews: get<_i8.GetNews>()));
  return get;
}
