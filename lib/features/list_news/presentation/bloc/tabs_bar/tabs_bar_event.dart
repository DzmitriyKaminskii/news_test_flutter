part of 'tabs_bar_bloc.dart';

abstract class TabsBarEvent extends Equatable {
  const TabsBarEvent();
}

class ChangeTab extends TabsBarEvent {
  final int tabNumber;

  const ChangeTab({required this.tabNumber});

  @override
  List<Object?> get props => [tabNumber];
}
