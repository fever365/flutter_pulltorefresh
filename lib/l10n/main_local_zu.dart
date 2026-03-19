// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Zulu (`zu`).
class AppLocalizationsPulltorefreshZu extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshZu([String locale = 'zu']) : super(locale);

  @override
  String get canLoadingText => 'Khulula ukuze ulayishe okwengeziwe';

  @override
  String get canRefreshText => 'Khulula ukuze uvuselele';

  @override
  String get canTwoLevelText => 'Khulula ukuze ungene esitezi sesibili';

  @override
  String get idleLoadingText => 'Donsela phezulu Layisha okwengeziwe';

  @override
  String get idleRefreshText => 'Donsela phansi Vuselela';

  @override
  String get loadFailedText => 'Ukulayisha kuhlulekile';

  @override
  String get loadingText => 'Iyalayisha…';

  @override
  String get noMoreText => 'Ayikho idatha eyengeziwe';

  @override
  String get refreshCompleteText => 'Ukuvuselela kuqedile';

  @override
  String get refreshFailedText => 'Ukuvuselela kuhlulekile';

  @override
  String get refreshingText => 'Iyavuselela…';
}
