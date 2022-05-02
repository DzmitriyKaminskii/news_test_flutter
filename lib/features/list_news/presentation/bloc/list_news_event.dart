part of 'list_news_bloc.dart';

abstract class ListNewsEvent extends Equatable {
  const ListNewsEvent();
}

class SearchEvent extends ListNewsEvent {
  final String searchString;

  const SearchEvent({required this.searchString});

  @override
  List<Object?> get props => [searchString];
}
