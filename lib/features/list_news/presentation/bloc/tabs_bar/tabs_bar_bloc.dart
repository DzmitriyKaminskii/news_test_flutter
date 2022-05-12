import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tabs_bar_bloc.freezed.dart';
part 'tabs_bar_event.dart';
part 'tabs_bar_state.dart';

class TabsBarBloc extends Bloc<TabsBarEvent, TabsBarState> {
  TabsBarBloc() : super(TabsBarState.initial()) {
    on<ChangeTab>(_changeTabBar);
  }

  void _changeTabBar(ChangeTab event, Emitter<TabsBarState> emit) {}
}
