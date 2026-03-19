// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Macedonian (`mk`).
class AppLocalizationsPulltorefreshMk extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshMk([String locale = 'mk']) : super(locale);

  @override
  String get canLoadingText => 'Отпуштете за да вчитате повеќе';

  @override
  String get canRefreshText => 'Отпуштете за да освежите';

  @override
  String get canTwoLevelText => 'Отпуштете за да влезете на вториот кат';

  @override
  String get idleLoadingText => 'Повлечете нагоре за вчитување';

  @override
  String get idleRefreshText => 'Повлечете надолу за освежување';

  @override
  String get loadFailedText => 'Вчитувањето не успеа';

  @override
  String get loadingText => 'Се вчита...';

  @override
  String get noMoreText => 'Нема повеќе податоци';

  @override
  String get refreshCompleteText => 'Освежувањето заврши';

  @override
  String get refreshFailedText => 'Освежувањето не успеа';

  @override
  String get refreshingText => 'Се освежува...';
}
