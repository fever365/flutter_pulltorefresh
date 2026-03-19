// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsPulltorefreshCs extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshCs([String locale = 'cs']) : super(locale);

  @override
  String get canLoadingText => 'Uvolněním spustíte načítání';

  @override
  String get canRefreshText => 'Uvolněním spustíte aktualizaci';

  @override
  String get canTwoLevelText => 'Uvolněním vstoupíte do druhé úrovně';

  @override
  String get idleLoadingText => 'Tažením nahoru načtete více';

  @override
  String get idleRefreshText => 'Tažením dolů aktualizujete';

  @override
  String get loadFailedText => 'Načítání selhalo';

  @override
  String get loadingText => 'Načítání…';

  @override
  String get noMoreText => 'Žádná další data';

  @override
  String get refreshCompleteText => 'Aktualizace dokončena';

  @override
  String get refreshFailedText => 'Aktualizace selhala';

  @override
  String get refreshingText => 'Aktualizace…';
}
