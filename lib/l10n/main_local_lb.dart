// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Luxembourgish Letzeburgesch (`lb`).
class AppLocalizationsPulltorefreshLb extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshLb([String locale = 'lb']) : super(locale);

  @override
  String get canLoadingText => 'Lassloossen fir méi ze lueden';

  @override
  String get canRefreshText => 'Lassloossen fir ze aktualiséieren';

  @override
  String get canTwoLevelText => 'Lassloossen fir op den zweete Stack ze goen';

  @override
  String get idleLoadingText => 'Eropzéien fir méi ze lueden';

  @override
  String get idleRefreshText => 'Erofzéien fir ze aktualiséieren';

  @override
  String get loadFailedText => 'Lueden feelgeschloen';

  @override
  String get loadingText => 'Lueden…';

  @override
  String get noMoreText => 'Keng weider Daten';

  @override
  String get refreshCompleteText => 'Aktualiséierung fäerdeg';

  @override
  String get refreshFailedText => 'Aktualiséierung feelgeschloen';

  @override
  String get refreshingText => 'Aktualiséieren…';
}
