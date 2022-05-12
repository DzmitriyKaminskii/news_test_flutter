import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:news_test_flutter/theme/padding_edge.dart';

class FilterChipBlock extends StatelessWidget {
  FilterChipBlock({Key? key}) : super(key: key);

  final List<String> _newsAgencies = [
    "Not relevant",
    "Illegal",
    "Spam",
    "Offensive",
    "Uncivil"
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: Padding(
        padding: PaddingEdge.chipPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'chip_title'.i18n(),
              style: Theme.of(context).textTheme.headline3,
            ),
            MultiSelectChipDisplay(
              scroll: true,
              chipColor: Theme.of(context).colorScheme.tertiary,
              textStyle: Theme.of(context).textTheme.subtitle2,
              shape: StadiumBorder(
                side: BorderSide(
                  color: Theme.of(context).colorScheme.onTertiary,
                ),
              ),
              items: _newsAgencies.map((e) => MultiSelectItem(e, e)).toList(),
              onTap: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
