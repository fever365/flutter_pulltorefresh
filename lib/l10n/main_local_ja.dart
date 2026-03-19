// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsPulltorefreshJa extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshJa([String locale = 'ja']) : super(locale);

  @override
  String get canLoadingText => '指を離して更に読み込む';

  @override
  String get canRefreshText => '指を離して更新';

  @override
  String get canTwoLevelText => '指を離して2段目を表示';

  @override
  String get idleLoadingText => '上方スワイプで更に読み込む';

  @override
  String get idleRefreshText => '下方スワイプでデータを更新';

  @override
  String get loadFailedText => '読み込みが失敗しました';

  @override
  String get loadingText => '読み込み中…';

  @override
  String get noMoreText => 'データはありません';

  @override
  String get refreshCompleteText => '更新完了';

  @override
  String get refreshFailedText => '更新が失敗しました';

  @override
  String get refreshingText => '更新中…';
}
