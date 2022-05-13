import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:news_test_flutter/features/list_news/domain/entities/news.dart';
import 'package:news_test_flutter/features/list_news/shared/tab_bar_enum.dart';

import 'one_news.dart';

class TabsView extends StatelessWidget {
  const TabsView({Key? key, required this.newsList, required this.activeTab})
      : super(key: key);

  final List<News> newsList;
  final TabBarEnum activeTab;

  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [];
    for (var element in TabBarEnum.values) {
      if (element == activeTab) {
        tabs.add(_ListNews(newsList: newsList));
      } else {
        tabs.add(const Text(''));
      }
    }
    return Expanded(child: TabBarView(children: tabs));
  }
}

class _ListNews extends StatelessWidget {
  const _ListNews({Key? key, required this.newsList}) : super(key: key);

  final List<News> newsList;

  @override
  Widget build(BuildContext context) {
    if (newsList.isNotEmpty) {
      return ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            final item = newsList[index];
            return OneNews(
                title: item.title,
                subTitle: item.description ?? '',
                sources: item.sources,
                imageSrc: item.imageScr ?? '');
          });
    } else {
      return Center(child: Text('news_not_found'.i18n()));
    }
  }
}
