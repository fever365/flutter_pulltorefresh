// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Aymara (`ay`).
class AppLocalizationsPulltorefreshAy extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshAy([String locale = 'ay']) : super(locale);

  @override
  String get canLoadingText => 'Apt\'añataki jaytjaña';

  @override
  String get canRefreshText => 'Machaqataki jaytjaña';

  @override
  String get canTwoLevelText => 'Paya t\'aqaru mantañataki jaytjaña';

  @override
  String get idleLoadingText => 'Alayaru jaqt\'aña apt\'añataki';

  @override
  String get idleRefreshText => 'Ainacharu jaqt\'aña machaqataki';

  @override
  String get loadFailedText => 'Janiwa apt\'askiti';

  @override
  String get loadingText => 'Apt\'askkiwa...';

  @override
  String get noMoreText => 'Janiwa yaqha yatiyawinaka utjkiti';

  @override
  String get refreshCompleteText => 'Machaqata lurt\'atawa';

  @override
  String get refreshFailedText => 'Janiwa machaqat lurt\'askiti';

  @override
  String get refreshingText => 'Machaqat lurt\'askkiwa...';
}
