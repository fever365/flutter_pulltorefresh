// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsPulltorefreshAr extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshAr([String locale = 'ar']) : super(locale);

  @override
  String get canLoadingText => 'إفلات للتحميل المزيد';

  @override
  String get canRefreshText => 'إفلات للتحديث';

  @override
  String get canTwoLevelText => 'إفلات للدخول للطابق الثاني';

  @override
  String get idleLoadingText => 'اسحب للأعلى للتحميل المزيد';

  @override
  String get idleRefreshText => 'اسحب للأسفل للتحديث';

  @override
  String get loadFailedText => 'فشل التحميل';

  @override
  String get loadingText => 'جاري التحميل...';

  @override
  String get noMoreText => 'لا يوجد المزيد من البيانات';

  @override
  String get refreshCompleteText => 'اكتمل التحديث';

  @override
  String get refreshFailedText => 'فشل التحديث';

  @override
  String get refreshingText => 'جاري التحديث...';
}
