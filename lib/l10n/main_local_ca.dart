// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsPulltorefreshCa extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshCa([String locale = 'ca']) : super(locale);

  @override
  String get canLoadingText => 'Deixeu anar per carregar més';

  @override
  String get canRefreshText => 'Deixeu anar per refrescar';

  @override
  String get canTwoLevelText => 'Deixeu anar per entrar al segon nivell';

  @override
  String get idleLoadingText => 'Arrossegueu cap amunt per carregar més';

  @override
  String get idleRefreshText => 'Arrossegueu cap avall per refrescar';

  @override
  String get loadFailedText => 'Error en la càrrega';

  @override
  String get loadingText => 'Carregant…';

  @override
  String get noMoreText => 'No hi ha més dades';

  @override
  String get refreshCompleteText => 'Refresc completat';

  @override
  String get refreshFailedText => 'Error en el refresc';

  @override
  String get refreshingText => 'Refrescant…';
}
