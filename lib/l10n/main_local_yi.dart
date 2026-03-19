// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Yiddish (`yi`).
class AppLocalizationsPulltorefreshYi extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshYi([String locale = 'yi']) : super(locale);

  @override
  String get canLoadingText => 'מעלדונג צו לאָדן מער';

  @override
  String get canRefreshText => 'מעלדונג צו דערפרישן';

  @override
  String get canTwoLevelText => 'מעלדונג צו אַרייַן צווייטע שטאָק';

  @override
  String get idleLoadingText => 'ציען אַרויף לאָדן מער';

  @override
  String get idleRefreshText => 'ציען אַראָפּ דערפרישן';

  @override
  String get loadFailedText => 'לאָדן דורכפאַל';

  @override
  String get loadingText => 'לאָדן…';

  @override
  String get noMoreText => 'ניט מער דאַטן';

  @override
  String get refreshCompleteText => 'דערפרישן געענדיקט';

  @override
  String get refreshFailedText => 'דערפרישן דורכפאַל';

  @override
  String get refreshingText => 'דערפרישינג…';
}
