import 'package:flutter/material.dart';

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
              const Text(
                'Period:',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(0.0),
                ),
                onPressed: () {},
                child: const Text(
                  'Selected date',
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '+ Sort:',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                  ),
                  onPressed: () {},
                  child: const Text('(date/scr) asc/desc'))
            ],
          )
        ],
      ),
    );
  }
}
