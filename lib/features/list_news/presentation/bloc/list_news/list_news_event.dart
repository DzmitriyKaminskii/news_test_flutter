part of 'list_news_bloc.dart';

abstract class ListNewsEvent extends Equatable {
  const ListNewsEvent();
}

class AddSearchValueEvent extends ListNewsEvent {
  final String searchString;

  const AddSearchValueEvent({required this.searchString});

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
