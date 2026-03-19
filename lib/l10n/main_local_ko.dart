// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsPulltorefreshKo extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshKo([String locale = 'ko']) : super(locale);

  @override
  String get canLoadingText => '당겨서 불러오기';

  @override
  String get canRefreshText => '당겨서 새로 고침';

  @override
  String get canTwoLevelText => '두 번째 레벨로 이동';

  @override
  String get idleLoadingText => '위로 당겨서 불러오기';

  @override
  String get idleRefreshText => '아래로 당겨서 새로 고침';

  @override
  String get loadFailedText => '로딩에 실패했습니다.';

  @override
  String get loadingText => '로딩 중…';

  @override
  String get noMoreText => '데이터가 더 이상 없습니다.';

  @override
  String get refreshCompleteText => '새로 고침 완료';

  @override
  String get refreshFailedText => '새로 고침에 실패했습니다.';

  @override
  String get refreshingText => '새로 고침 중…';
}
