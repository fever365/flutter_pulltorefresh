// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsPulltorefreshEu extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshEu([String locale = 'eu']) : super(locale);

  @override
  String get canLoadingText => 'Askatu gehiago kargatzeko';

  @override
  String get canRefreshText => 'Askatu freskatzeko';

  @override
  String get canTwoLevelText => 'Askatu bigarren mailan sartzeko';

  @override
  String get idleLoadingText => 'Gehiago kargatzeko tira gora';

  @override
  String get idleRefreshText => 'Freskatzeko tira behera';

  @override
  String get loadFailedText => 'Kargak huts egin du';

  @override
  String get loadingText => 'Kargatzen…';

  @override
  String get noMoreText => 'Ez dago datu gehiagorik';

  @override
  String get refreshCompleteText => 'Freskatzea burutu da';

  @override
  String get refreshFailedText => 'Freskatzeak huts egin du';

  @override
  String get refreshingText => 'Freskatzen…';
}
