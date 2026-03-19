// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsPulltorefreshId extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshId([String locale = 'id']) : super(locale);

  @override
  String get canLoadingText => 'Lepaskan untuk memuat lebih';

  @override
  String get canRefreshText => 'Lepaskan untuk menyegarkan';

  @override
  String get canTwoLevelText => 'Lepaskan untuk masuk ke lantai dua';

  @override
  String get idleLoadingText => 'Tarik ke atas untuk memuat';

  @override
  String get idleRefreshText => 'Tarik ke bawah untuk menyegarkan';

  @override
  String get loadFailedText => 'Pemuatan Gagal';

  @override
  String get loadingText => 'Memuat...';

  @override
  String get noMoreText => 'Tidak ada data lagi';

  @override
  String get refreshCompleteText => 'Penyegaran Selesai';

  @override
  String get refreshFailedText => 'Penyegaran Gagal';

  @override
  String get refreshingText => 'Menyegarkan...';
}
