// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsPulltorefreshEn extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshEn([String locale = 'en']) : super(locale);

  @override
  String get canLoadingText => 'Release to load more';

  @override
  String get canRefreshText => 'Release to refresh';

  @override
  String get canTwoLevelText => 'Release to enter secondfloor';

  @override
  String get idleLoadingText => 'Pull up Load more';

  @override
  String get idleRefreshText => 'Pull down Refresh';

  @override
  String get loadFailedText => 'Load Failed';

  @override
  String get loadingText => 'Loading…';

  @override
  String get noMoreText => 'No more data';

  @override
  String get refreshCompleteText => 'Refresh completed';

  @override
  String get refreshFailedText => 'Refresh failed';

  @override
  String get refreshingText => 'Refreshing…';
}
