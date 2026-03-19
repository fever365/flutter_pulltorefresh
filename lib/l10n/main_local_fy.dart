// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Western Frisian (`fy`).
class AppLocalizationsPulltorefreshFy extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshFy([String locale = 'fy']) : super(locale);

  @override
  String get canLoadingText => 'Loslitte om mear te laden';

  @override
  String get canRefreshText => 'Loslitte om te ferfarskje';

  @override
  String get canTwoLevelText => 'Loslitte om nei de twadde ferdjipping te gean';

  @override
  String get idleLoadingText => 'Omheech lûke om mear te laden';

  @override
  String get idleRefreshText => 'Omleech lûke om te ferfarskje';

  @override
  String get loadFailedText => 'Laden mislearre';

  @override
  String get loadingText => 'Laden…';

  @override
  String get noMoreText => 'Gjin gegevens mear';

  @override
  String get refreshCompleteText => 'Ferfarskjen klear';

  @override
  String get refreshFailedText => 'Ferfarskjen mislearre';

  @override
  String get refreshingText => 'Ferfarskjen…';
}
