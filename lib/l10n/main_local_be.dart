// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class AppLocalizationsPulltorefreshBe extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshBe([String locale = 'be']) : super(locale);

  @override
  String get canLoadingText => 'Адпусціце, каб загрузіць больш';

  @override
  String get canRefreshText => 'Адпусціце, каб абнавіць';

  @override
  String get canTwoLevelText => 'Адпусціце, каб перайсці на другі ўзровень';

  @override
  String get idleLoadingText => 'Пацягніце ўверх, каб загрузіць больш';

  @override
  String get idleRefreshText => 'Пацягніце ўніз, каб абнавіць';

  @override
  String get loadFailedText => 'Памылка загрузкі';

  @override
  String get loadingText => 'Загрузка…';

  @override
  String get noMoreText => 'Дадзеных больш няма';

  @override
  String get refreshCompleteText => 'Абнаўленне завершана';

  @override
  String get refreshFailedText => 'Памылка абнаўлення';

  @override
  String get refreshingText => 'Абнаўленне…';
}
