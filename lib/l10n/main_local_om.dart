// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Oromo (`om`).
class AppLocalizationsPulltorefreshOm extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshOm([String locale = 'om']) : super(locale);

  @override
  String get canLoadingText => 'Gadhiisi dabalata fiduuf';

  @override
  String get canRefreshText => 'Gadhiisi haaromsuuf';

  @override
  String get canTwoLevelText => 'Gadhiisi gara darbii lammaffaatti seenuuf';

  @override
  String get idleLoadingText => 'Gadi harkisi dabalata fiduuf';

  @override
  String get idleRefreshText => 'Ol harkisi haaromsuuf';

  @override
  String get loadFailedText => 'Fiduun kufeera';

  @override
  String get loadingText => 'Fidaa jira...';

  @override
  String get noMoreText => 'Daataan dabalataa hin jiru';

  @override
  String get refreshCompleteText => 'Haaromsuun xumurameera';

  @override
  String get refreshFailedText => 'Haaromsuun kufeera';

  @override
  String get refreshingText => 'Haaromsaa jira...';
}
