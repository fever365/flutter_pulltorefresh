// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsPulltorefreshFr extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshFr([String locale = 'fr']) : super(locale);

  @override
  String get canLoadingText => 'Relâchez pour charger davantage';

  @override
  String get canRefreshText => 'Relâchez pour rafraîchir';

  @override
  String get canTwoLevelText => 'Relâchez pour entrer secondfloor';

  @override
  String get idleLoadingText => 'Tirez pour charger davantage';

  @override
  String get idleRefreshText => 'Tirez pour rafraîchir';

  @override
  String get loadFailedText => 'Chargement échoué';

  @override
  String get loadingText => 'Chargement…';

  @override
  String get noMoreText => 'Aucune autre donnée';

  @override
  String get refreshCompleteText => 'Rafraîchissement terminé';

  @override
  String get refreshFailedText => 'Rafraîchissement échoué';

  @override
  String get refreshingText => 'Rafraîchissement…';
}
