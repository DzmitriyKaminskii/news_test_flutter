import 'package:flutter/material.dart';
import 'package:news_test_flutter/features/list_news/domain/entities/news.dart';

import 'one_news.dart';

class TabsView extends StatelessWidget {
  const TabsView({Key? key, required this.newsList, required this.isHeadLines})
      : super(key: key);

  final List<News> newsList;
  final bool isHeadLines;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          if (isHeadLines) ...[
            _ListNews(newsList: newsList),
            const Text('Second'),
          ] else ...[
            const Text('First'),
            _ListNews(newsList: newsList),
          ]
        ],
      ),
    );
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
      return const Center(child: Text('News not found'));
    }
  }
}
