import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:news_test_flutter/theme/padding_edge.dart';
import 'package:news_test_flutter/theme/theme_text.dart';

class FilterSortBlock extends StatelessWidget {
  const FilterSortBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingEdge.allTen,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'period_title'.i18n(),
                style: ThemeText.sortTitle,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: PaddingEdge.allZero,
                ),
                onPressed: () {},
                child: Text(
                  'selected_date'.i18n(),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'sort_title'.i18n(),
                style: ThemeText.sortTitle,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    padding: PaddingEdge.allZero,
                  ),
                  onPressed: () {},
                  child: Text('date_order'.i18n()))
            ],
          )
        ],
      ),
    );
  }
}
