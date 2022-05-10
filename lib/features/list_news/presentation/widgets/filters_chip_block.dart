import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';

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
    return SizedBox(
      height: 100.0,
      width: double.infinity,
      child: Material(
        color: Colors.grey[300],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 10.0, 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'chip_title'.i18n(),
                style: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0),
              ),
              MultiSelectChipDisplay(
                scroll: true,
                chipColor: Colors.purple[100],
                textStyle: const TextStyle(
                  color: Colors.black,
                ),
                shape: StadiumBorder(
                  side: BorderSide(
                    color: Colors.purple[400] ?? Colors.purple,
                  ),
                ),
                items: _newsAgencies.map((e) => MultiSelectItem(e, e)).toList(),
                onTap: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
