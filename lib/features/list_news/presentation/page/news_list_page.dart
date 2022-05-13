import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:localization/localization.dart';
import 'package:news_test_flutter/features/list_news/presentation/bloc/list_news/list_news_bloc.dart';
import 'package:news_test_flutter/features/list_news/presentation/bloc/search/search_bloc.dart';
import 'package:news_test_flutter/features/list_news/presentation/bloc/tabs_bar/tabs_bar_bloc.dart';
import 'package:news_test_flutter/features/list_news/presentation/widgets/filter_sort_block.dart';
import 'package:news_test_flutter/features/list_news/presentation/widgets/filters_chip_block.dart';
import 'package:news_test_flutter/features/list_news/presentation/widgets/search.dart';
import 'package:news_test_flutter/features/list_news/presentation/widgets/tabs_bar.dart';
import 'package:news_test_flutter/features/list_news/presentation/widgets/tabs_view.dart';
import 'package:news_test_flutter/injection.dart';
import 'package:news_test_flutter/theme/dimensions.dart';

class NewsListPage extends StatelessWidget {
  const NewsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: Theme.of(context).textTheme.caption,
        title: Text('app_title'.i18n()),
      ),
      body: DefaultTabController(
        length: 2,
        child: MultiBlocProvider(
          providers: [
            BlocProvider<ListNewsBloc>(
              create: (BuildContext context) {
                var bloc = locator<ListNewsBloc>();
                bloc.add(InitialEvent());
                return bloc;
              },
            ),
            BlocProvider<SearchBloc>(
              create: (BuildContext context) => locator<SearchBloc>(),
            ),
            BlocProvider<TabsBarBloc>(
              create: (BuildContext context) => locator<TabsBarBloc>(),
            )
          ],
          child: LoaderOverlay(
            child: Column(
              children: [
                BlocConsumer<SearchBloc, SearchState>(
                  builder: (context, state) =>
                      Search(searchString: state.searchValue),
                  listener: (context, state) {
                    BlocProvider.of<ListNewsBloc>(context).add(
                      AddSearchValueEvent(
                        searchString: state.searchValue,
                      ),
                    );
                  },
                ),
                BlocConsumer<TabsBarBloc, TabsBarState>(
                  builder: (context, state) => const TabsBar(),
                  listener: (context, state) {
                    BlocProvider.of<ListNewsBloc>(context).add(
                      ChangeTabBar(
                        isHeadLines: state.isHeadLines,
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: Dimensions.defaultSpacer,
                ),
                FilterChipBlock(),
                const FilterSortBlock(),
                BlocBuilder<ListNewsBloc, ListNewsState>(
                  builder: (context, state) {
                    return Expanded(
                      child: Column(
                        children: [
                          _Loader(isLoading: state.isLoading),
                          TabsView(
                            newsList: state.news,
                            isHeadLines: state.isHeadLines,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Loader extends StatelessWidget {
  const _Loader({Key? key, required this.isLoading}) : super(key: key);

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    isLoading ? context.loaderOverlay.show() : context.loaderOverlay.hide();
    return const SizedBox();
  }
}
