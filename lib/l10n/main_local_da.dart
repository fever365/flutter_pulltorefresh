// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsPulltorefreshDa extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshDa([String locale = 'da']) : super(locale);

  @override
  String get canLoadingText => 'Slip for at indlæse mere';

  @override
  String get canRefreshText => 'Slip for at opdatere';

  @override
  String get canTwoLevelText => 'Slip for at gå til andet niveau';

  @override
  String get idleLoadingText => 'Træk op for at indlæse mere';

  @override
  String get idleRefreshText => 'Træk ned for at opdatere';

  @override
  String get loadFailedText => 'Indlæsning mislykkedes';

  @override
  String get loadingText => 'Indlæser…';

  @override
  String get noMoreText => 'Ikke flere data';

  @override
  String get refreshCompleteText => 'Opdatering gennemført';

  @override
  String get refreshFailedText => 'Opdatering mislykkedes';

  @override
  String get refreshingText => 'Opdaterer…';
}
