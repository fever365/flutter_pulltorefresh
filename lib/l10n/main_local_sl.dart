// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsPulltorefreshSl extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshSl([String locale = 'sl']) : super(locale);

  @override
  String get canLoadingText => 'Spustite za nalaganje več';

  @override
  String get canRefreshText => 'Spustite za osvežitev';

  @override
  String get canTwoLevelText => 'Spustite za vstop v drugo nadstropje';

  @override
  String get idleLoadingText => 'Povlecite navzgor za nalaganje več';

  @override
  String get idleRefreshText => 'Povlecite navzdol za osvežitev';

  @override
  String get loadFailedText => 'Nalaganje ni uspelo';

  @override
  String get loadingText => 'Nalaganje...';

  @override
  String get noMoreText => 'Ni več podatkov';

  @override
  String get refreshCompleteText => 'Osvežitev končana';

  @override
  String get refreshFailedText => 'Osvežitev ni uspela';

  @override
  String get refreshingText => 'Osveževanje...';
}
