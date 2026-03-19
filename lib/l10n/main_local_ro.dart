// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsPulltorefreshRo extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshRo([String locale = 'ro']) : super(locale);

  @override
  String get canLoadingText => 'Eliberați pentru a încărca mai mult';

  @override
  String get canRefreshText => 'Eliberați pentru a reîmprospăta';

  @override
  String get canTwoLevelText => 'Eliberați pentru a intra la etajul doi';

  @override
  String get idleLoadingText => 'Trageți în sus pour a încărca mai mult';

  @override
  String get idleRefreshText => 'Trageți în jos pentru a reîmprospăta';

  @override
  String get loadFailedText => 'Încărcare eșuată';

  @override
  String get loadingText => 'Se încarcă...';

  @override
  String get noMoreText => 'Nu mai există date';

  @override
  String get refreshCompleteText => 'Reîmprospătare finalizată';

  @override
  String get refreshFailedText => 'Reîmprospătare eșuată';

  @override
  String get refreshingText => 'Se reîmprospătează...';
}
