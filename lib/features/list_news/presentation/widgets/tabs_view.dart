import 'package:flutter/material.dart';
import 'package:news_test_flutter/features/list_news/domain/entities/news.dart';

import 'one_news.dart';

class TabsView extends StatelessWidget {
  TabsView({Key? key, required this.newsList}) : super(key: key);

  final List<News> newsList;

  final List<News> _all = List<News>.generate(
      10,
      (index) => News(
          title: 'Title ${index * index}',
          description: 'subTitle ${index * index}',
          sources: 'sources ${index * index}',
          imageScr: 'assets/noimage.png'));

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          if (newsList.isNotEmpty)
            ListView.builder(
                itemCount: newsList.length,
                itemBuilder: (context, index) {
                  final item = newsList[index];
                  return OneNews(
                      title: item.title,
                      subTitle: item.description ?? '',
                      sources: item.sources,
                      imageSrc: item.imageScr ?? '');
                })
          else
            const Center(child: Text('News not found')),
          ListView.builder(
              itemCount: _all.length,
              itemBuilder: (context, index) {
                final item = _all[index];
                return OneNews(
                    title: item.title,
                    subTitle: item.description ?? '',
                    sources: item.sources,
                    imageSrc: item.imageScr ?? '');
              }),
        ],
      ),
    );
  }
}
