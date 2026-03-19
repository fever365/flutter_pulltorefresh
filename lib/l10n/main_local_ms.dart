// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsPulltorefreshMs extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshMs([String locale = 'ms']) : super(locale);

  @override
  String get canLoadingText => 'Lepaskan untuk memuatkan lebih banyak';

  @override
  String get canRefreshText => 'Lepaskan untuk menyegar semula';

  @override
  String get canTwoLevelText => 'Lepaskan untuk masuk ke tingkat kedua';

  @override
  String get idleLoadingText => 'Tarik ke atas untuk memuatkan lebih banyak';

  @override
  String get idleRefreshText => 'Tarik ke bawah untuk menyegar semula';

  @override
  String get loadFailedText => 'Gagal memuatkan';

  @override
  String get loadingText => 'Memuatkan...';

  @override
  String get noMoreText => 'Tiada lagi data';

  @override
  String get refreshCompleteText => 'Segar semula selesai';

  @override
  String get refreshFailedText => 'Gagal menyegar semula';

  @override
  String get refreshingText => 'Menyegar semula...';
}
