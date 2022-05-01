import 'package:flutter/material.dart';
import 'package:news_test_flutter/features/list_news/presentation/widgets/TabsView.dart';
import 'package:news_test_flutter/features/list_news/presentation/widgets/filter_sort_block.dart';
import 'package:news_test_flutter/features/list_news/presentation/widgets/filters_chip_block.dart';
import 'package:news_test_flutter/features/list_news/presentation/widgets/search.dart';
import 'package:news_test_flutter/features/list_news/presentation/widgets/tabs_bar.dart';

class NewsListPage extends StatelessWidget {
  const NewsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latest news'),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const Search(),
            const TabsBar(),
            const SizedBox(
              height: 10.0,
            ),
            FilterChipBlock(),
            const FilterSortBlock(),
            TabsView(),
          ],
        ),
      ),
    );
  }
}
