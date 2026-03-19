// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsPulltorefreshSw extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshSw([String locale = 'sw']) : super(locale);

  @override
  String get canLoadingText => 'Achilia ili kupakia zaidi';

  @override
  String get canRefreshText => 'Achilia ili kuonyesha upya';

  @override
  String get canTwoLevelText => 'Achilia ili kuingia ghorofa ya pili';

  @override
  String get idleLoadingText => 'Vuta juu ili kupakia zaidi';

  @override
  String get idleRefreshText => 'Vuta chini ili kuonyesha upya';

  @override
  String get loadFailedText => 'Upakiaji umeshindwa';

  @override
  String get loadingText => 'Inapakia…';

  @override
  String get noMoreText => 'Hakuna data zaidi';

  @override
  String get refreshCompleteText => 'Uonyeshaji upya umekamilika';

  @override
  String get refreshFailedText => 'Uonyeshaji upya umeshindwa';

  @override
  String get refreshingText => 'Inaonyesha upya…';
}
