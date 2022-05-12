part of 'tabs_bar_bloc.dart';

@freezed
class TabsBarState with _$TabsBarState {
  const factory TabsBarState({required bool isHeadLines}) = _TabsBarState;

  factory TabsBarState.initial() => const TabsBarState(isHeadLines: true);
}
