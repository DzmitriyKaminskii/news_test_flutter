part of 'list_news_bloc.dart';

@freezed
class ListNewsState with _$ListNewsState {
  const factory ListNewsState({
    required String searchValue,
    required bool isHeadLines,
    required List<String> sources,
    required String dateFrom,
    required String dateTo,
    required String sortValue,
    required String sortType,
    required List<News> news,
  }) = _ListNewsState;

  factory ListNewsState.initial() => const ListNewsState(
      searchValue: "",
      isHeadLines: true,
      sources: [],
      dateFrom: '',
      dateTo: '',
      sortValue: '',
      sortType: '',
      news: []);
}
