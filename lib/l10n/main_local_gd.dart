// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Scottish Gaelic Gaelic (`gd`).
class AppLocalizationsPulltorefreshGd extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshGd([String locale = 'gd']) : super(locale);

  @override
  String get canLoadingText => 'Leig às airson barrachd a luchdadh';

  @override
  String get canRefreshText => 'Leig às airson ath-nuadhachadh';

  @override
  String get canTwoLevelText => 'Leig às airson a dhol chun an dàrna ìre';

  @override
  String get idleLoadingText => 'Slaod suas airson barrachd a luchdadh';

  @override
  String get idleRefreshText => 'Slaod sìos airson ath-nuadhachadh';

  @override
  String get loadFailedText => 'Dh’fhàillig an luchdadh';

  @override
  String get loadingText => 'A’ luchdadh…';

  @override
  String get noMoreText => 'Chan eil barrachd dàta ann';

  @override
  String get refreshCompleteText => 'Ath-nuadhachadh deiseil';

  @override
  String get refreshFailedText => 'Dh’fhàillig an t-ath-nuadhachadh';

  @override
  String get refreshingText => 'Ag ath-nuadhachadh…';
}
