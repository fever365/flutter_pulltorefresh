// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Kurdish (`ku`).
class AppLocalizationsPulltorefreshKu extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshKu([String locale = 'ku']) : super(locale);

  @override
  String get canLoadingText => 'Berde ji bo bêtir barkirinê';

  @override
  String get canRefreshText => 'Berde ji bo nûkirinê';

  @override
  String get canTwoLevelText => 'Berde ji bo ketina qata duyem';

  @override
  String get idleLoadingText => 'Bikişîne jor ji bo bêtir barkirinê';

  @override
  String get idleRefreshText => 'Bikişîne jêr ji bo nûkirinê';

  @override
  String get loadFailedText => 'Barkirin bi ser neket';

  @override
  String get loadingText => 'Tê barkirin…';

  @override
  String get noMoreText => 'Daneyên bêtir tune';

  @override
  String get refreshCompleteText => 'Nûkirin qediya';

  @override
  String get refreshFailedText => 'Nûkirin bi ser neket';

  @override
  String get refreshingText => 'Tê nûkirin…';
}
