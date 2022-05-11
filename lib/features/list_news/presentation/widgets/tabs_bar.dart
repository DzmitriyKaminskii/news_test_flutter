import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/localization.dart';
import 'package:news_test_flutter/features/list_news/presentation/bloc/list_news_bloc.dart';
import 'package:news_test_flutter/theme/padding_edge.dart';
import 'package:news_test_flutter/theme/theme_text.dart';

class TabsBar extends StatelessWidget {
  const TabsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[400],
      child: TabBar(
        onTap: (element) {
          BlocProvider.of<ListNewsBloc>(context).add(ChangeTab(tab: element));
        },
        indicator: BoxDecoration(
          color: Colors.grey[600],
        ),
        tabs: [
          Padding(
            padding: PaddingEdge.tabPadding,
            child: Center(
              child: Text(
                'headlines_tab'.i18n(),
                style: ThemeText.tabBarTitle,
              ),
            ),
          ),
          Padding(
            padding: PaddingEdge.tabPadding,
            child: Center(
              child: Text(
                'everything_tab'.i18n(),
                style: ThemeText.tabBarTitle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
