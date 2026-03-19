// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsPulltorefreshHi extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshHi([String locale = 'hi']) : super(locale);

  @override
  String get canLoadingText => 'छोड़ें और अधिक लोड करें';

  @override
  String get canRefreshText => 'रिफ्रेश करने के लिए छोड़ें';

  @override
  String get canTwoLevelText => 'दूसरे स्तर पर जाने के लिए छोड़ें';

  @override
  String get idleLoadingText => 'अधिक लोड करने के लिए ऊपर खींचें';

  @override
  String get idleRefreshText => 'रिफ्रेश करने के लिए नीचे खींचें';

  @override
  String get loadFailedText => 'लोड विफल';

  @override
  String get loadingText => 'लोड हो रहा है...';

  @override
  String get noMoreText => 'कोई और डेटा नहीं';

  @override
  String get refreshCompleteText => 'रिफ्रेश पूरा हुआ';

  @override
  String get refreshFailedText => 'रिफ्रेश विफल';

  @override
  String get refreshingText => 'रिफ्रेश हो रहा है...';
}
