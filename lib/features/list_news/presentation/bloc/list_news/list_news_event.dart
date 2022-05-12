part of 'list_news_bloc.dart';

abstract class ListNewsEvent extends Equatable {
  const ListNewsEvent();
}

class ClearSearchEvent extends ListNewsEvent {
  @override
  List<Object?> get props => [];
}

class SearchEvent extends ListNewsEvent {
  final String searchString;

  const SearchEvent({required this.searchString});

  @override
  List<Object?> get props => [searchString];
}

class ChangeTab extends ListNewsEvent {
  final int tab;

  const ChangeTab({required this.tab});

  @override
  List<Object?> get props => [tab];
}

class InitialEvent extends ListNewsEvent {
  @override
  List<Object?> get props => [];
}
