// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Hausa (`ha`).
class AppLocalizationsPulltorefreshHa extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshHa([String locale = 'ha']) : super(locale);

  @override
  String get canLoadingText => 'Saki don ɗora ƙarin';

  @override
  String get canRefreshText => 'Saki don sabuntawa';

  @override
  String get canTwoLevelText => 'Saki don shiga mataki na biyu';

  @override
  String get idleLoadingText => 'Jawo sama don ɗora ƙarin';

  @override
  String get idleRefreshText => 'Jawo ƙasa don sabuntawa';

  @override
  String get loadFailedText => 'An kasa ɗora';

  @override
  String get loadingText => 'Ana ɗora…';

  @override
  String get noMoreText => 'Babu ƙarin bayanai';

  @override
  String get refreshCompleteText => 'An gama sabuntawa';

  @override
  String get refreshFailedText => 'An kasa sabuntawa';

  @override
  String get refreshingText => 'Ana sabuntawa…';
}
