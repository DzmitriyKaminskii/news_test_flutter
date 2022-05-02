import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:news_test_flutter/features/list_news/domain/news.dart';

part 'list_news_bloc.freezed.dart';
part 'list_news_event.dart';
part 'list_news_state.dart';

@injectable
class ListNewsBloc extends Bloc<ListNewsEvent, ListNewsState> {
  ListNewsBloc() : super(ListNewsState.initial()) {
    on<SearchEvent>((event, emit) {
      emit(state.copyWith(searchValue: 'TESTING: ${event.searchString}'));
    });
    on<ClearSearchEvent>((event, emit) {
      emit(state.copyWith(searchValue: ''));
    });
  }
}
