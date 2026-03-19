// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsPulltorefreshHe extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshHe([String locale = 'he']) : super(locale);

  @override
  String get canLoadingText => 'שחרר כדי לטעון עוד';

  @override
  String get canRefreshText => 'שחרר כדי לרענן';

  @override
  String get canTwoLevelText => 'שחרר כדי להיכנס לקומה השנייה';

  @override
  String get idleLoadingText => 'משוך למעלה כדי לטעון עוד';

  @override
  String get idleRefreshText => 'משוך למטה כדי לרענן';

  @override
  String get loadFailedText => 'הטעינה נכשלה';

  @override
  String get loadingText => 'טוען…';

  @override
  String get noMoreText => 'אין עוד נתונים';

  @override
  String get refreshCompleteText => 'הרענון הושלם';

  @override
  String get refreshFailedText => 'הרענון נכשל';

  @override
  String get refreshingText => 'מרענן…';
}
