// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsPulltorefreshAz extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshAz([String locale = 'az']) : super(locale);

  @override
  String get canLoadingText => 'Daha çox yükləmək üçün buraxın';

  @override
  String get canRefreshText => 'Yeniləmək üçün buraxın';

  @override
  String get canTwoLevelText => 'İkinci səviyyəyə daxil olmaq üçün buraxın';

  @override
  String get idleLoadingText => 'Daha çox yükləmək üçün yuxarı çəkin';

  @override
  String get idleRefreshText => 'Yeniləmək üçün aşağı çəkin';

  @override
  String get loadFailedText => 'Yükləmə uğursuz oldu';

  @override
  String get loadingText => 'Yüklənir…';

  @override
  String get noMoreText => 'Daha çox məlumat yoxdur';

  @override
  String get refreshCompleteText => 'Yeniləmə başa çatdı';

  @override
  String get refreshFailedText => 'Yeniləmə uğursuz oldu';

  @override
  String get refreshingText => 'Yenilənir…';
}
