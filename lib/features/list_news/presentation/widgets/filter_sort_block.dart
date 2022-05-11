import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class FilterSortBlock extends StatelessWidget {
  const FilterSortBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'period_title'.i18n(),
                style: const TextStyle(
                  color: Colors.blue,
                ),
              ),
              TextButton(
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
                style: const TextStyle(
                  color: Colors.blue,
                ),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
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
