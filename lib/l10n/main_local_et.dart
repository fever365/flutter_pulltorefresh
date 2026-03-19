// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsPulltorefreshEt extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshEt([String locale = 'et']) : super(locale);

  @override
  String get canLoadingText => 'Vabastage, et laadida rohkem';

  @override
  String get canRefreshText => 'Vabastage, et värskendada';

  @override
  String get canTwoLevelText => 'Vabastage, et siseneda teisele korrusele';

  @override
  String get idleLoadingText => 'Tõmmake üles, et laadida rohkem';

  @override
  String get idleRefreshText => 'Tõmmake alla, et värskendada';

  @override
  String get loadFailedText => 'Laadimine ebaõnnestus';

  @override
  String get loadingText => 'Laadimine…';

  @override
  String get noMoreText => 'Andmeid pole rohkem';

  @override
  String get refreshCompleteText => 'Värskendamine lõpetatud';

  @override
  String get refreshFailedText => 'Värskendamine ebaõnnestus';

  @override
  String get refreshingText => 'Värskendamine…';
}
