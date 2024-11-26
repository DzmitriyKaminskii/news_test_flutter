// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as i1;
import 'package:http/http.dart' as i4;
import 'package:injectable/injectable.dart' as i2;

import 'features/list_news/data/datasources/news_data_sources.dart' as i3;
import 'features/list_news/data/repositories/news_repository_impl.dart' as i6;
import 'features/list_news/domain/repositories/news_repository.dart' as i5;
import 'features/list_news/domain/usercases/get_news.dart' as i9;
import 'features/list_news/presentation/bloc/list_news/list_news_bloc.dart'
    as i10;
import 'features/list_news/presentation/bloc/search/search_bloc.dart' as i7;
import 'features/list_news/presentation/bloc/tabs_bar/tabs_bar_bloc.dart'
    as i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
i1.GetIt $initGetIt(i1.GetIt get,
    {String? environment, i2.EnvironmentFilter? environmentFilter}) {
  final gh = i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<i3.NewsDataSources>(
      () => i3.NewsDataSourcesImpl(client: get<i4.Client>()));
  gh.factory<i5.NewsRepository>(() =>
      i6.NewsRepositoryImpl(newsDataSources: get<i3.NewsDataSources>()));
  gh.factory<i7.SearchBloc>(() => i7.SearchBloc());
  gh.factory<i8.TabsBarBloc>(() => i8.TabsBarBloc());
  gh.factory<i9.GetNews>(() => i9.GetNews(get<i5.NewsRepository>()));
  gh.factory<i10.ListNewsBloc>(
      () => i10.ListNewsBloc(getNews: get<i9.GetNews>()));
  return get;
}
