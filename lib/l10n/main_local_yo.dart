// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Yoruba (`yo`).
class AppLocalizationsPulltorefreshYo extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshYo([String locale = 'yo']) : super(locale);

  @override
  String get canLoadingText => 'Tu silẹ lati gbe diẹ sii';

  @override
  String get canRefreshText => 'Tu silẹ lati sọ di tuntun';

  @override
  String get canTwoLevelText => 'Tu silẹ lati wọ ilẹ keji';

  @override
  String get idleLoadingText => 'Fa soke Gbe diẹ sii';

  @override
  String get idleRefreshText => 'Fa si isalẹ Sọ di tuntun';

  @override
  String get loadFailedText => 'Ikojọpọ Kuna';

  @override
  String get loadingText => 'Nkojọpọ…';

  @override
  String get noMoreText => 'Ko si data mọ';

  @override
  String get refreshCompleteText => 'Sọ di tuntun ti pari';

  @override
  String get refreshFailedText => 'Sọ di tuntun kuna';

  @override
  String get refreshingText => 'Nsọ di tuntun…';
}
