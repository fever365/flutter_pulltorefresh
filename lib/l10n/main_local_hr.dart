// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsPulltorefreshHr extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshHr([String locale = 'hr']) : super(locale);

  @override
  String get canLoadingText => 'Otpustite za učitavanje više';

  @override
  String get canRefreshText => 'Otpustite za osvježavanje';

  @override
  String get canTwoLevelText => 'Otpustite za ulazak na drugi nivo';

  @override
  String get idleLoadingText => 'Povucite prema gore za učitavanje više';

  @override
  String get idleRefreshText => 'Povucite prema dolje za osvježavanje';

  @override
  String get loadFailedText => 'Učitavanje nije uspjelo';

  @override
  String get loadingText => 'Učitavanje…';

  @override
  String get noMoreText => 'Nema više podataka';

  @override
  String get refreshCompleteText => 'Osvježavanje završeno';

  @override
  String get refreshFailedText => 'Osvježavanje nije uspjelo';

  @override
  String get refreshingText => 'Osvježavanje…';
}
