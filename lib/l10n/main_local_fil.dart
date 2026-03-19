// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsPulltorefreshFil extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshFil([String locale = 'fil']) : super(locale);

  @override
  String get canLoadingText => 'Bitawan para mag-load pa';

  @override
  String get canRefreshText => 'Bitawan para mag-refresh';

  @override
  String get canTwoLevelText => 'Bitawan para pumasok sa ikalawang antas';

  @override
  String get idleLoadingText => 'Hilahin pataas para mag-load pa';

  @override
  String get idleRefreshText => 'Hilahin pababa para mag-refresh';

  @override
  String get loadFailedText => 'Bigo ang pag-load';

  @override
  String get loadingText => 'Naglo-load…';

  @override
  String get noMoreText => 'Wala nang datos';

  @override
  String get refreshCompleteText => 'Tapos na ang pag-refresh';

  @override
  String get refreshFailedText => 'Bigo ang pag-refresh';

  @override
  String get refreshingText => 'Nagre-refresh…';
}
