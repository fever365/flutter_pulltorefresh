// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsPulltorefreshUk extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshUk([String locale = 'uk']) : super(locale);

  @override
  String get canLoadingText => 'Відпустіть, щоб завантажити більше';

  @override
  String get canRefreshText => 'Відпустіть, щоб оновити';

  @override
  String get canTwoLevelText => 'Відпустіть, щоб увійти на другий рівень';

  @override
  String get idleLoadingText => 'Тягнути вгору, щоб завантажити більше';

  @override
  String get idleRefreshText => 'Тягнути вниз, щоб оновити';

  @override
  String get loadFailedText => 'Помилка завантаження';

  @override
  String get loadingText => 'Завантаження…';

  @override
  String get noMoreText => 'Більше даних немає';

  @override
  String get refreshCompleteText => 'Оновлення завершено';

  @override
  String get refreshFailedText => 'Не вдалося оновити';

  @override
  String get refreshingText => 'Оновлення…';
}
