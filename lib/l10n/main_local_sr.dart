// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsPulltorefreshSr extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshSr([String locale = 'sr']) : super(locale);

  @override
  String get canLoadingText => 'Otpustite za učitavanje više';

  @override
  String get canRefreshText => 'Otpustite za osvežavanje';

  @override
  String get canTwoLevelText => 'Otpustite za ulazak na drugi nivo';

  @override
  String get idleLoadingText => 'Povucite nagore za učitavanje više';

  @override
  String get idleRefreshText => 'Povucite nadole za osvežavanje';

  @override
  String get loadFailedText => 'Učitavanje nije uspelo';

  @override
  String get loadingText => 'Učitavanje…';

  @override
  String get noMoreText => 'Nema više podataka';

  @override
  String get refreshCompleteText => 'Osvežavanje završeno';

  @override
  String get refreshFailedText => 'Osvežavanje nije uspelo';

  @override
  String get refreshingText => 'Osvežavanje…';
}
