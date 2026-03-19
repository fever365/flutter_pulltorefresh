// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsPulltorefreshSq extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshSq([String locale = 'sq']) : super(locale);

  @override
  String get canLoadingText => 'Lësho për të ngarkuar më shumë';

  @override
  String get canRefreshText => 'Lësho për të rifreskuar';

  @override
  String get canTwoLevelText => 'Lësho për të hyrë në katin e dytë';

  @override
  String get idleLoadingText => 'Tërhiq lart për të ngarkuar më shumë';

  @override
  String get idleRefreshText => 'Tërhiq poshtë për të rifreskuar';

  @override
  String get loadFailedText => 'Ngarkimi dështoi';

  @override
  String get loadingText => 'Duke u ngarkuar…';

  @override
  String get noMoreText => 'Nuk ka më të dhëna';

  @override
  String get refreshCompleteText => 'Rifreskimi përfundoi';

  @override
  String get refreshFailedText => 'Rifreskimi dështoi';

  @override
  String get refreshingText => 'Duke u rifreskuar…';
}
