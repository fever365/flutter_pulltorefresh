// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsPulltorefreshTh extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshTh([String locale = 'th']) : super(locale);

  @override
  String get canLoadingText => 'ปล่อยเพื่อโหลดเพิ่ม';

  @override
  String get canRefreshText => 'ปล่อยเพื่อรีเฟรช';

  @override
  String get canTwoLevelText => 'ปล่อยเพื่อเข้าสู่ชั้นที่สอง';

  @override
  String get idleLoadingText => 'ดึงขึ้นเพื่อโหลดเพิ่ม';

  @override
  String get idleRefreshText => 'ดึงลงเพื่อรีเฟรช';

  @override
  String get loadFailedText => 'โหลดล้มเหลว';

  @override
  String get loadingText => 'กำลังโหลด...';

  @override
  String get noMoreText => 'ไม่มีข้อมูลเพิ่มเติม';

  @override
  String get refreshCompleteText => 'รีเฟรชเสร็จสมบูรณ์';

  @override
  String get refreshFailedText => 'รีเฟรชล้มเหลว';

  @override
  String get refreshingText => 'กำลังรีเฟรช...';
}
