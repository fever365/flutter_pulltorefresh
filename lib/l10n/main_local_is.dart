// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class AppLocalizationsPulltorefreshIs extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshIs([String locale = 'is']) : super(locale);

  @override
  String get canLoadingText => 'Slepptu til að hlaða meira';

  @override
  String get canRefreshText => 'Slepptu til að endurhlaða';

  @override
  String get canTwoLevelText => 'Slepptu til að fara á aðra hæð';

  @override
  String get idleLoadingText => 'Dragðu upp til að hlaða meira';

  @override
  String get idleRefreshText => 'Dragðu niður til að endurhlaða';

  @override
  String get loadFailedText => 'Hleðsla mistókst';

  @override
  String get loadingText => 'Hleður…';

  @override
  String get noMoreText => 'Engin frekari gögn';

  @override
  String get refreshCompleteText => 'Endurhleðslu lokið';

  @override
  String get refreshFailedText => 'Endurhleðsla mistókst';

  @override
  String get refreshingText => 'Endurhleður…';
}
