// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsPulltorefreshRu extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshRu([String locale = 'ru']) : super(locale);

  @override
  String get canLoadingText => 'Отпустите, чтобы загрузить больше';

  @override
  String get canRefreshText => 'Отпустите, чтобы обновить';

  @override
  String get canTwoLevelText => 'Отпустите, чтобы войти на второй уровень';

  @override
  String get idleLoadingText => 'Тянуть вверх, чтобы загрузить больше';

  @override
  String get idleRefreshText => 'Тянуть вниз, чтобы обновить';

  @override
  String get loadFailedText => 'Ошибка загрузки';

  @override
  String get loadingText => 'Загрузка…';

  @override
  String get noMoreText => 'Больше данных нет';

  @override
  String get refreshCompleteText => 'Обновление завершено';

  @override
  String get refreshFailedText => 'Не удалось обновить';

  @override
  String get refreshingText => 'Обновление…';
}
