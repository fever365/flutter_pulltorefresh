// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsPulltorefreshLv extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshLv([String locale = 'lv']) : super(locale);

  @override
  String get canLoadingText => 'Atlaidiet, lai ielādētu vairāk';

  @override
  String get canRefreshText => 'Atlaidiet, lai atsvaidzinātu';

  @override
  String get canTwoLevelText => 'Atlaidiet, lai ieietu otrajā līmenī';

  @override
  String get idleLoadingText => 'Velciet uz augšu, lai ielādētu vairāk';

  @override
  String get idleRefreshText => 'Velciet uz leju, lai atsvaidzinātu';

  @override
  String get loadFailedText => 'Ielāde neizdevās';

  @override
  String get loadingText => 'Ielādē...';

  @override
  String get noMoreText => 'Nav vairāk datu';

  @override
  String get refreshCompleteText => 'Atsvaidzināšana pabeigta';

  @override
  String get refreshFailedText => 'Atsvaidzināšana neizdevās';

  @override
  String get refreshingText => 'Atsvaidzina...';
}
