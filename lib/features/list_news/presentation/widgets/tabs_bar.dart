import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/localization.dart';
import 'package:news_test_flutter/features/list_news/presentation/bloc/tabs_bar/tabs_bar_bloc.dart';
import 'package:news_test_flutter/theme/padding_edge.dart';

class TabsBar extends StatelessWidget {
  const TabsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.onPrimaryContainer,
      child: TabBar(
        onTap: (element) {
          BlocProvider.of<TabsBarBloc>(context).add(
            ChangeTab(tab: element),
          );
        },
        indicator: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        tabs: [
          Padding(
            padding: PaddingEdge.tabPadding,
            child: Center(
              child: Text(
                'headlines_tab'.i18n(),
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          Padding(
            padding: PaddingEdge.tabPadding,
            child: Center(
              child: Text(
                'everything_tab'.i18n(),
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
