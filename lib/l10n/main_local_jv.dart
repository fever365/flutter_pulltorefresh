// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Javanese (`jv`).
class AppLocalizationsPulltorefreshJv extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshJv([String locale = 'jv']) : super(locale);

  @override
  String get canLoadingText => 'Culna kanggo amot liyane';

  @override
  String get canRefreshText => 'Culna kanggo nyegerake';

  @override
  String get canTwoLevelText => 'Culna kanggo mlebu lantai loro';

  @override
  String get idleLoadingText => 'Tarik munggah kanggo amot liyane';

  @override
  String get idleRefreshText => 'Tarik mudhun kanggo nyegerake';

  @override
  String get loadFailedText => 'Gagal amot';

  @override
  String get loadingText => 'Lagi amot…';

  @override
  String get noMoreText => 'Ora ana data maneh';

  @override
  String get refreshCompleteText => 'Selesai nyegerake';

  @override
  String get refreshFailedText => 'Gagal nyegerake';

  @override
  String get refreshingText => 'Lagi nyegerake…';
}
