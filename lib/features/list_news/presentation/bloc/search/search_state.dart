part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({required String searchValue}) = _SearchState;

  factory SearchState.initial() => const SearchState(searchValue: "");
}
