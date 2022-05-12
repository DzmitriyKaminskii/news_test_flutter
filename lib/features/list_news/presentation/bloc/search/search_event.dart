part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();
}

class ClearSearchEvent extends SearchEvent {
  @override
  List<Object?> get props => [];
}

class SearchValueEvent extends SearchEvent {
  final String searchString;

  const SearchValueEvent({required this.searchString});

  @override
  List<Object?> get props => [searchString];
}
