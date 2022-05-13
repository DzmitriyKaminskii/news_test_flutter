import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:news_test_flutter/features/list_news/domain/entities/news.dart';
import 'package:news_test_flutter/features/list_news/domain/usercases/get_news.dart';
import 'package:news_test_flutter/features/list_news/shared/tab_bar_enum.dart';

part 'list_news_bloc.freezed.dart';
part 'list_news_event.dart';
part 'list_news_state.dart';

@injectable
class ListNewsBloc extends Bloc<ListNewsEvent, ListNewsState> {
  final GetNews getNews;

  ListNewsBloc({required this.getNews}) : super(ListNewsState.initial()) {
    on<InitialEvent>(_initialEvent);
    on<ChangeTabBar>(_changeTabEvent);
    on<AddSearchValueEvent>(_searchEvent);
  }

  Future<void> _initialEvent(
    ListNewsEvent event,
    Emitter<ListNewsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    final response = await getNews.call(const QueryParams());
    response.fold(
      (failure) => emit(state.copyWith(isLoading: false)),
      (news) => emit(state.copyWith(news: news, isLoading: false)),
    );
  }

  Future<void> _changeTabEvent(
    ChangeTabBar event,
    Emitter<ListNewsState> emit,
  ) async {
    var tabValue = event.tab;
    emit(state.copyWith(isLoading: true, tab: tabValue));

    final response = await getNews.call(
      QueryParams(
        tab: tabValue,
        searchValue: state.searchValue,
      ),
    );

    response.fold(
      (failure) => emit(state.copyWith(isLoading: false)),
      (news) => emit(state.copyWith(news: news, isLoading: false)),
    );
  }

  Future<void> _searchEvent(
    AddSearchValueEvent event,
    Emitter<ListNewsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, searchValue: event.searchString));

    final response = await getNews.call(
      QueryParams(
        searchValue: event.searchString,
        tab: state.tab,
      ),
    );
    response.fold(
      (failure) => emit(state.copyWith(isLoading: false)),
      (news) => emit(state.copyWith(news: news, isLoading: false)),
    );
  }
}
