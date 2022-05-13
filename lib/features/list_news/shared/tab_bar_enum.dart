import 'package:localization/localization.dart';

enum TabBarEnum {
  topHeadLines,
  everything,
}

extension TabBarValues on TabBarEnum {
  String get name {
    switch (this) {
      case TabBarEnum.topHeadLines:
        return 'headlines_tab'.i18n();
      case TabBarEnum.everything:
        return 'everything_tab'.i18n();
    }
  }

  String get path {
    switch (this) {
      case TabBarEnum.topHeadLines:
        return 'v2/top-headlines';
      case TabBarEnum.everything:
        return 'v2/everything';
    }
  }
}
