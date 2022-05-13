part of 'tabs_bar_bloc.dart';

@freezed
class TabsBarState with _$TabsBarState {
  const factory TabsBarState({required TabBarEnum tab}) = _TabsBarState;

  factory TabsBarState.initial() =>
      const TabsBarState(tab: TabBarEnum.topHeadLines);
}
