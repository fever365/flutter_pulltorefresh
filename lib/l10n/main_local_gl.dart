// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsPulltorefreshGl extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshGl([String locale = 'gl']) : super(locale);

  @override
  String get canLoadingText => 'Solta para cargar máis';

  @override
  String get canRefreshText => 'Solta para actualizar';

  @override
  String get canTwoLevelText => 'Solta para entrar no segundo nivel';

  @override
  String get idleLoadingText => 'Tira cara arriba para cargar máis';

  @override
  String get idleRefreshText => 'Tira cara abaixo para actualizar';

  @override
  String get loadFailedText => 'Erro na carga';

  @override
  String get loadingText => 'Cargando…';

  @override
  String get noMoreText => 'Non hai máis datos';

  @override
  String get refreshCompleteText => 'Actualización completada';

  @override
  String get refreshFailedText => 'Erro na actualización';

  @override
  String get refreshingText => 'Actualizando…';
}
