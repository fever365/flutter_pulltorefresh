// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsPulltorefreshBg extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshBg([String locale = 'bg']) : super(locale);

  @override
  String get canLoadingText => 'Пуснете за зареждане на повече';

  @override
  String get canRefreshText => 'Пуснете за опресняване';

  @override
  String get canTwoLevelText => 'Пуснете за влизане във второ ниво';

  @override
  String get idleLoadingText => 'Издърпайте нагоре за зареждане';

  @override
  String get idleRefreshText => 'Издърпайте надолу за опресняване';

  @override
  String get loadFailedText => 'Зареждането неуспешно';

  @override
  String get loadingText => 'Зареждане…';

  @override
  String get noMoreText => 'Няма повече данни';

  @override
  String get refreshCompleteText => 'Опресняването завършено';

  @override
  String get refreshFailedText => 'Опресняването неуспешно';

  @override
  String get refreshingText => 'Опресняване…';
}
