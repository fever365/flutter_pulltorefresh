// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsPulltorefreshEs extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshEs([String locale = 'es']) : super(locale);

  @override
  String get canLoadingText => 'Suelte para cargar más';

  @override
  String get canRefreshText => 'Suelte para actualizar';

  @override
  String get canTwoLevelText => 'Suelte para entrar al segundo nivel';

  @override
  String get idleLoadingText => 'Tire hacia arriba para cargar más';

  @override
  String get idleRefreshText => 'Tire hacia abajo para refrescar';

  @override
  String get loadFailedText => 'Error de carga';

  @override
  String get loadingText => 'Cargando…';

  @override
  String get noMoreText => 'No hay más datos disponibles';

  @override
  String get refreshCompleteText => 'Actualización completada';

  @override
  String get refreshFailedText => 'Error al actualizar';

  @override
  String get refreshingText => 'Actualizando…';
}
