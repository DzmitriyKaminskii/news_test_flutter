import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/localization.dart';
import 'package:news_test_flutter/features/list_news/presentation/bloc/list_news_bloc.dart';
import 'package:news_test_flutter/theme/padding_edge.dart';
import 'package:news_test_flutter/theme/theme_text.dart';

class Search extends StatelessWidget {
  Search({Key? key, required this.searchString}) : super(key: key);

  final String searchString;
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _searchController.text = searchString;

    return Padding(
      padding: PaddingEdge.allFive,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _searchController,
              onSubmitted: (value) {
                BlocProvider.of<ListNewsBloc>(context)
                    .add(SearchEvent(searchString: value));
              },
              style: ThemeText.searchText,
              decoration: InputDecoration(
                  contentPadding: PaddingEdge.leftFifteen,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  hintStyle: ThemeText.searchText,
                  hintText: 'search_placeholder'.i18n(),
                  filled: true,
                  fillColor: Colors.grey[400]),
            ),
          ),
          TextButton(
            onPressed: () {
              _searchController.clear();
              BlocProvider.of<ListNewsBloc>(context).add(ClearSearchEvent());
            },
            child: Text(
              'clear_button'.i18n(),
              style: ThemeText.searchText,
            ),
          )
        ],
      ),
    );
  }
}
