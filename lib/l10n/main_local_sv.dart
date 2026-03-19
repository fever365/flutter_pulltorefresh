// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsPulltorefreshSv extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshSv([String locale = 'sv']) : super(locale);

  @override
  String get canLoadingText => 'Släpp för att ladda mer';

  @override
  String get canRefreshText => 'Släpp för att uppdatera';

  @override
  String get canTwoLevelText => 'Släpp för att gå till andra våningen';

  @override
  String get idleLoadingText => 'Dra upp för att ladda mer';

  @override
  String get idleRefreshText => 'Dra ner för att uppdatera';

  @override
  String get loadFailedText => 'Hämtningen misslyckades';

  @override
  String get loadingText => 'Laddar…';

  @override
  String get noMoreText => 'Ingen mer data';

  @override
  String get refreshCompleteText => 'Uppdaterad';

  @override
  String get refreshFailedText => 'Kunde inte uppdatera';

  @override
  String get refreshingText => 'Uppdaterar…';
}
