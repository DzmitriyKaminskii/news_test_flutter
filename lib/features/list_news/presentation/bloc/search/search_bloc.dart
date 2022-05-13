import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState.initial()) {
    on<SearchValueEvent>(_searchEvent);
    on<ClearSearchEvent>(_clearSearchEvent);
  }

  void _searchEvent(SearchValueEvent event, Emitter<SearchState> emit) {
    if (event.searchString.isEmpty) return;

    emit(
      state.copyWith(
        searchValue: event.searchString,
      ),
    );
  }

  void _clearSearchEvent(ClearSearchEvent event, Emitter<SearchState> emit) {
    if (state.searchValue.isEmpty) return;

    emit(
      state.copyWith(
        searchValue: '',
      ),
    );
  }
}
