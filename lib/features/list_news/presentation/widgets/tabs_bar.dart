import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_test_flutter/features/list_news/presentation/bloc/list_news/list_news_bloc.dart';
import 'package:news_test_flutter/features/list_news/presentation/bloc/tabs_bar/tabs_bar_bloc.dart';
import 'package:news_test_flutter/features/list_news/shared/tab_bar_enum.dart';
import 'package:news_test_flutter/theme/padding_edge.dart';

class TabsBar extends StatelessWidget {
  const TabsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TabsBarBloc, TabsBarState>(
      builder: (context, state) => const _TabsBarWidget(),
      listener: (context, state) {
        BlocProvider.of<ListNewsBloc>(context)
            .add(ChangeTabBar(tab: state.tab));
      },
    );
  }
}

class _TabsBarWidget extends StatelessWidget {
  const _TabsBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [];
    for (var element in TabBarEnum.values) {
      tabs.add(_OneTab(title: element.name));
    }
    return Material(
      color: Theme.of(context).colorScheme.onPrimaryContainer,
      child: TabBar(
        onTap: (element) {
          BlocProvider.of<TabsBarBloc>(context).add(
            ChangeTab(tabNumber: element),
          );
        },
        indicator: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        tabs: tabs,
      ),
    );
  }
}

class _OneTab extends StatelessWidget {
  const _OneTab({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingEdge.tabPadding,
      child: Center(
        child: Text(title, style: Theme.of(context).textTheme.headline1),
      ),
    );
  }
}
