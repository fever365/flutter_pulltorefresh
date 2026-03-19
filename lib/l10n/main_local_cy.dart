// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Welsh (`cy`).
class AppLocalizationsPulltorefreshCy extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshCy([String locale = 'cy']) : super(locale);

  @override
  String get canLoadingText => 'Gollwng i lwytho mwy';

  @override
  String get canRefreshText => 'Gollwng i adnewyddu';

  @override
  String get canTwoLevelText => 'Gollwng i fynd i\'r ail lefel';

  @override
  String get idleLoadingText => 'Tynnu i fyny i lwytho mwy';

  @override
  String get idleRefreshText => 'Tynnu i lawr i adnewyddu';

  @override
  String get loadFailedText => 'Methwyd â llwytho';

  @override
  String get loadingText => 'Llwytho…';

  @override
  String get noMoreText => 'Dim mwy o ddata';

  @override
  String get refreshCompleteText => 'Adnewyddu wedi\'i gwblhau';

  @override
  String get refreshFailedText => 'Methwyd ag adnewyddu';

  @override
  String get refreshingText => 'Adnewyddu…';
}
