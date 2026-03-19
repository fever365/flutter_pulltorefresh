// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Sanskrit (`sa`).
class AppLocalizationsPulltorefreshSa extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshSa([String locale = 'sa']) : super(locale);

  @override
  String get canLoadingText => 'अधिकं भारयितुं त्यजतु';

  @override
  String get canRefreshText => 'नवीकरणाय त्यजतु';

  @override
  String get canTwoLevelText => 'द्वितीयतलं प्रवेष्टुं त्यजतु';

  @override
  String get idleLoadingText => 'अधिकं भारयितुं उपरि कर्षतु';

  @override
  String get idleRefreshText => 'नवीकरणाय अधः कर्षतु';

  @override
  String get loadFailedText => 'भारणं विफलम्';

  @override
  String get loadingText => 'भारयन् अस्ति...';

  @override
  String get noMoreText => 'अधिकं तथ्यं नास्ति';

  @override
  String get refreshCompleteText => 'नवीकरणं पूर्णम्';

  @override
  String get refreshFailedText => 'नवीकरणं विफलम्';

  @override
  String get refreshingText => 'नवीकुर्वन् अस्ति...';
}
