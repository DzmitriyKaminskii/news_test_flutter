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

class ChangeTabBar extends ListNewsEvent {
  final bool isHeadLines;

  const ChangeTabBar({required this.isHeadLines});

  @override
  List<Object?> get props => [isHeadLines];
}

class InitialEvent extends ListNewsEvent {
  @override
  List<Object?> get props => [];
}
