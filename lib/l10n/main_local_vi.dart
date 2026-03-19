// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsPulltorefreshVi extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshVi([String locale = 'vi']) : super(locale);

  @override
  String get canLoadingText => 'Thả ra để tải thêm';

  @override
  String get canRefreshText => 'Thả ra để làm mới';

  @override
  String get canTwoLevelText => 'Thả ra để vào tầng hai';

  @override
  String get idleLoadingText => 'Kéo lên để tải thêm';

  @override
  String get idleRefreshText => 'Kéo xuống để làm mới';

  @override
  String get loadFailedText => 'Tải xuống thất bại';

  @override
  String get loadingText => 'Đang tải...';

  @override
  String get noMoreText => 'Không còn dữ liệu';

  @override
  String get refreshCompleteText => 'Làm mới thành công';

  @override
  String get refreshFailedText => 'Làm mới thất bại';

  @override
  String get refreshingText => 'Đang làm mới...';
}
