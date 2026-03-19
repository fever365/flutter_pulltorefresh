// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsPulltorefreshHu extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshHu([String locale = 'hu']) : super(locale);

  @override
  String get canLoadingText => 'Engedje el a további töltéshez';

  @override
  String get canRefreshText => 'Engedje el a frissítéshez';

  @override
  String get canTwoLevelText => 'Engedje el a második szintre lépéshez';

  @override
  String get idleLoadingText => 'Húzza fel a további töltéshez';

  @override
  String get idleRefreshText => 'Húzza le a frissítéshez';

  @override
  String get loadFailedText => 'Betöltés sikertelen';

  @override
  String get loadingText => 'Betöltés…';

  @override
  String get noMoreText => 'Nincs több adat';

  @override
  String get refreshCompleteText => 'Frissítés kész';

  @override
  String get refreshFailedText => 'Frissítés sikertelen';

  @override
  String get refreshingText => 'Frissítés…';
}
