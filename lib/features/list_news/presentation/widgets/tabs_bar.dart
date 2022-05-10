import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/localization.dart';
import 'package:news_test_flutter/features/list_news/presentation/bloc/list_news_bloc.dart';

class TabsBar extends StatelessWidget {
  const TabsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[400],
      child: TabBar(
        onTap: (element) {
          BlocProvider.of<ListNewsBloc>(context).add(ChangeTab(tab: element));
        },
        indicator: BoxDecoration(
          color: Colors.grey[600],
        ),
        tabs: [
          SizedBox(
            height: 50.0,
            child: Center(
              child: Text(
                'headlines_tab'.i18n(),
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
            child: Center(
              child: Text(
                'everything_tab'.i18n(),
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
