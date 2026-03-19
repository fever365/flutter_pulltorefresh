// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Ganda Luganda (`lg`).
class AppLocalizationsPulltorefreshLg extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshLg([String locale = 'lg']) : super(locale);

  @override
  String get canLoadingText => 'Ta okulonda ebirala';

  @override
  String get canRefreshText => 'Ta okuddamu okulaba';

  @override
  String get canTwoLevelText => 'Ta okuyingira mu kalina ey\'okubiri';

  @override
  String get idleLoadingText => 'Sika waggulu okulonda ebirala';

  @override
  String get idleRefreshText => 'Sika wansi okuddamu okulaba';

  @override
  String get loadFailedText => 'Okulonda kulemye';

  @override
  String get loadingText => 'Kulonda…';

  @override
  String get noMoreText => 'Tewali data mulala';

  @override
  String get refreshCompleteText => 'Kuddamu okulaba kuwedde';

  @override
  String get refreshFailedText => 'Kuddamu okulaba kulemye';

  @override
  String get refreshingText => 'Kuddamu okulaba…';
}
