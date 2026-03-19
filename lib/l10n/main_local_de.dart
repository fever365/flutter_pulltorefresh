// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsPulltorefreshDe extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshDe([String locale = 'de']) : super(locale);

  @override
  String get canLoadingText => 'Loslassen, um mehr zu laden';

  @override
  String get canRefreshText => 'Zum Aktualisieren loslassen';

  @override
  String get canTwoLevelText =>
      'Lassen Sie los, um den zweiten Stock zu betreten';

  @override
  String get idleLoadingText => 'Hochziehen, mehr laden';

  @override
  String get idleRefreshText => 'Ziehen für Aktualisierung';

  @override
  String get loadFailedText => 'Laden ist fehlgeschlagen';

  @override
  String get loadingText => 'Lade…';

  @override
  String get noMoreText => 'Keine weitere Daten';

  @override
  String get refreshCompleteText => 'Aktualisierung fertig';

  @override
  String get refreshFailedText => 'Aktualisierung fehlgeschlagen';

  @override
  String get refreshingText => 'Aktualisiere…';
}
