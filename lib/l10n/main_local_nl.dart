// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsPulltorefreshNl extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshNl([String locale = 'nl']) : super(locale);

  @override
  String get canLoadingText => 'Laat los om meer te laden';

  @override
  String get canRefreshText => 'Laat los om te vernieuwen';

  @override
  String get canTwoLevelText => 'Laat los om naar tweede verdieping te gaan';

  @override
  String get idleLoadingText => 'Trek omhoog om meer te laden';

  @override
  String get idleRefreshText => 'Trek omlaag om te vernieuwen';

  @override
  String get loadFailedText => 'Laden mislukt';

  @override
  String get loadingText => 'Laden…';

  @override
  String get noMoreText => 'Geen data meer';

  @override
  String get refreshCompleteText => 'Vernieuwen voltooid';

  @override
  String get refreshFailedText => 'Vernieuwen mislukt';

  @override
  String get refreshingText => 'Vernieuwen…';
}
