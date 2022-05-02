import 'package:flutter/material.dart';
import 'package:news_test_flutter/features/list_news/domain/news.dart';

import 'one_news.dart';

class TabsView extends StatelessWidget {
  TabsView({Key? key}) : super(key: key);

  final List<News> _top = List<News>.generate(
      10,
      (index) => News(
          title: 'Title $index',
          subTitle: 'subTitle $index',
          sources: 'sources $index',
          imageScr: 'assets/noimage.png'));

  final List<News> _all = List<News>.generate(
      10,
      (index) => News(
          title: 'Title ${index * index}',
          subTitle: 'subTitle ${index * index}',
          sources: 'sources ${index * index}',
          imageScr: 'assets/noimage.png'));

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          ListView.builder(
              itemCount: _top.length,
              itemBuilder: (context, index) {
                final item = _top[index];
                return OneNews(
                    title: item.title,
                    subTitle: item.subTitle,
                    sources: item.sources,
                    imageSrc: item.imageScr);
              }),
          ListView.builder(
              itemCount: _all.length,
              itemBuilder: (context, index) {
                final item = _all[index];
                return OneNews(
                    title: item.title,
                    subTitle: item.subTitle,
                    sources: item.sources,
                    imageSrc: item.imageScr);
              }),
        ],
      ),
    );
  }
}
