part of 'tabs_bar_bloc.dart';

abstract class TabsBarEvent extends Equatable {
  const TabsBarEvent();
}

class ChangeTab extends TabsBarEvent {
  final int tab;

  const ChangeTab({required this.tab});

  @override
  List<Object?> get props => [tab];
}
