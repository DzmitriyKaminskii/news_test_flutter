import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_test_flutter/features/list_news/presentation/bloc/list_news_bloc.dart';
import 'package:news_test_flutter/features/list_news/presentation/widgets/filter_sort_block.dart';
import 'package:news_test_flutter/features/list_news/presentation/widgets/filters_chip_block.dart';
import 'package:news_test_flutter/features/list_news/presentation/widgets/search.dart';
import 'package:news_test_flutter/features/list_news/presentation/widgets/tabs_bar.dart';
import 'package:news_test_flutter/features/list_news/presentation/widgets/tabs_view.dart';
import 'package:news_test_flutter/injection.dart';

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
        child: BlocProvider<ListNewsBloc>(
          create: (context) => locator<ListNewsBloc>(),
          child: BlocBuilder<ListNewsBloc, ListNewsState>(
              builder: (context, state) {
            return Column(
              children: [
                Search(
                  searchString: state.searchValue,
                ),
                const TabsBar(),
                const SizedBox(
                  height: 10.0,
                ),
                FilterChipBlock(),
                const FilterSortBlock(),
                TabsView(),
              ],
            );
          }),
        ),
      ),
    );
  }
}
