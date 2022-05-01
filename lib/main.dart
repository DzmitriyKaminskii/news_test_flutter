import 'package:flutter/material.dart';
import 'package:news_test_flutter/features/list_news/presentation/page/news_list_page.dart';
import 'package:news_test_flutter/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const AppWidgets());
}

class AppWidgets extends StatelessWidget {
  const AppWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsListPage(),
    );
  }
}
