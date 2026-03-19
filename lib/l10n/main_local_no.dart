// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsPulltorefreshNo extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshNo([String locale = 'no']) : super(locale);

  @override
  String get canLoadingText => 'Slipp for å laste mer';

  @override
  String get canRefreshText => 'Slipp for å oppdatere';

  @override
  String get canTwoLevelText => 'Slipp for å gå til andre etasje';

  @override
  String get idleLoadingText => 'Dra opp for å laste mer';

  @override
  String get idleRefreshText => 'Dra ned for å oppdatere';

  @override
  String get loadFailedText => 'Lasting feilet';

  @override
  String get loadingText => 'Laster...';

  @override
  String get noMoreText => 'Ingen flere data';

  @override
  String get refreshCompleteText => 'Oppdatering fullført';

  @override
  String get refreshFailedText => 'Oppdatering feilet';

  @override
  String get refreshingText => 'Oppdaterer...';
}
