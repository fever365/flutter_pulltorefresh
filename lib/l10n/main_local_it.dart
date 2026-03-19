// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsPulltorefreshIt extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshIt([String locale = 'it']) : super(locale);

  @override
  String get canLoadingText => 'Rilascia per caricare altro';

  @override
  String get canRefreshText => 'Rilascia per aggiornare';

  @override
  String get canTwoLevelText => 'Rilascia per accedere a secondfloor';

  @override
  String get idleLoadingText => 'Tira per caricare altro';

  @override
  String get idleRefreshText => 'Tira giù per aggiornare';

  @override
  String get loadFailedText => 'Caricamento fallito';

  @override
  String get loadingText => 'Caricamento…';

  @override
  String get noMoreText => 'Nessun altro elemento';

  @override
  String get refreshCompleteText => 'Aggiornamento completato';

  @override
  String get refreshFailedText => 'Aggiornamento fallito';

  @override
  String get refreshingText => 'Aggiornamento…';
}
