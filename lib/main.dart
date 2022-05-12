import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/localization.dart';
import 'package:news_test_flutter/features/list_news/presentation/page/news_list_page.dart';
import 'package:news_test_flutter/injection.dart';
import 'package:news_test_flutter/theme/app_colors.dart';
import 'package:news_test_flutter/theme/theme_text.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const AppWidgets());
}

class AppWidgets extends StatelessWidget {
  const AppWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocalJsonLocalization.delegate.directories = ['lib/i18n'];

    return MaterialApp(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ru', 'BY'),
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        LocalJsonLocalization.delegate,
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: AppColors.themeColors,
        textTheme: ThemeText.textTheme,
      ),
      home: const NewsListPage(),
    );
  }
}
