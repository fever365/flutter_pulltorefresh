// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Kinyarwanda (`rw`).
class AppLocalizationsPulltorefreshRw extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshRw([String locale = 'rw']) : super(locale);

  @override
  String get canLoadingText => 'Rekura kugira ngo ufungure ibindi';

  @override
  String get canRefreshText => 'Rekura kugira ngo uvugurure';

  @override
  String get canTwoLevelText =>
      'Rekura kugira ngo winjire mu igorofa ya kabiri';

  @override
  String get idleLoadingText =>
      'Kurura ujyana hejuru kugira ngo ufungure ibindi';

  @override
  String get idleRefreshText => 'Kurura ujyana hasi kugira ngo uvugurure';

  @override
  String get loadFailedText => 'Gufungura byanze';

  @override
  String get loadingText => 'Birafungurwa...';

  @override
  String get noMoreText => 'Nta yandi makuru ahari';

  @override
  String get refreshCompleteText => 'Kuvugurura birangiye';

  @override
  String get refreshFailedText => 'Kuvugurura byanze';

  @override
  String get refreshingText => 'Biravugururwa...';
}
