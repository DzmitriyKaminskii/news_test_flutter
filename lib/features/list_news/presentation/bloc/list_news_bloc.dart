import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:news_test_flutter/features/list_news/domain/entities/news.dart';
import 'package:news_test_flutter/features/list_news/domain/usercases/get_news.dart';

part 'list_news_bloc.freezed.dart';
part 'list_news_event.dart';
part 'list_news_state.dart';

@injectable
class ListNewsBloc extends Bloc<ListNewsEvent, ListNewsState> {
  final GetNews getNews;

  ListNewsBloc({required this.getNews}) : super(ListNewsState.initial()) {
    on<InitialEvent>(_initialEvent);
    on<SearchEvent>((event, emit) {
      emit(state.copyWith(searchValue: 'TESTING: ${event.searchString}'));
    });
    on<ClearSearchEvent>((event, emit) {
      emit(state.copyWith(searchValue: ''));
    });
  }

  Future<void> _initialEvent(
      ListNewsEvent event, Emitter<ListNewsState> emit) async {
    final response = await getNews.call(const QueryParams());
    response.fold(
        (failure) => null, (news) => emit(state.copyWith(news: news)));
  }
}
