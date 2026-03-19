// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Latin (`la`).
class AppLocalizationsPulltorefreshLa extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshLa([String locale = 'la']) : super(locale);

  @override
  String get canLoadingText => 'Mitte ad plura tollenda';

  @override
  String get canRefreshText => 'Mitte ad renovandum';

  @override
  String get canTwoLevelText => 'Mitte ad secundum tabulatum intrandum';

  @override
  String get idleLoadingText => 'Trahe sursum ad plura tollenda';

  @override
  String get idleRefreshText => 'Trahe deorsum ad renovandum';

  @override
  String get loadFailedText => 'Tollere defecit';

  @override
  String get loadingText => 'Tollens…';

  @override
  String get noMoreText => 'Nihil amplius datorum';

  @override
  String get refreshCompleteText => 'Renovatio perfecta';

  @override
  String get refreshFailedText => 'Renovatio defecit';

  @override
  String get refreshingText => 'Renovans…';
}
