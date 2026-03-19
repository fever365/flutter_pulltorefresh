// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Nyanja Chewa Chichewa (`ny`).
class AppLocalizationsPulltorefreshNy extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshNy([String locale = 'ny']) : super(locale);

  @override
  String get canLoadingText => 'Masulani kuti mutsegule zina';

  @override
  String get canRefreshText => 'Masulani kuti mutsegule mwatsopano';

  @override
  String get canTwoLevelText => 'Masulani kuti mulowe pansanjika yachiwiri';

  @override
  String get idleLoadingText => 'Kokani m\'mwamba kuti mutsegule zina';

  @override
  String get idleRefreshText => 'Kokani pansi kuti mutsegule mwatsopano';

  @override
  String get loadFailedText => 'Zalephera kutsegula';

  @override
  String get loadingText => 'Ikutsegula...';

  @override
  String get noMoreText => 'Palibenso zina';

  @override
  String get refreshCompleteText => 'Kwatsopano kwatha';

  @override
  String get refreshFailedText => 'Zalephera kutsitsimutsa';

  @override
  String get refreshingText => 'Ikutsitsimutsa...';
}
