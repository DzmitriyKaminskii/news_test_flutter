import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tabs_bar_bloc.freezed.dart';
part 'tabs_bar_event.dart';
part 'tabs_bar_state.dart';

@injectable
class TabsBarBloc extends Bloc<TabsBarEvent, TabsBarState> {
  TabsBarBloc() : super(TabsBarState.initial()) {
    on<ChangeTab>(_changeTabBar);
  }

  void _changeTabBar(ChangeTab event, Emitter<TabsBarState> emit) {
    if (state.isHeadLines == (event.tab == 0)) return;

    emit(
      state.copyWith(
        isHeadLines: event.tab == 0,
      ),
    );
  }
}
