// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsPulltorefreshTr extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshTr([String locale = 'tr']) : super(locale);

  @override
  String get canLoadingText => 'Daha fazlası için bırakın';

  @override
  String get canRefreshText => 'Yenilemek için bırakın';

  @override
  String get canTwoLevelText => 'İkinci kata girmek için bırakın';

  @override
  String get idleLoadingText => 'Daha fazla veri için yukarı kaydırın';

  @override
  String get idleRefreshText => 'Yenilemek için aşağı kaydırın';

  @override
  String get loadFailedText => 'Yükleme başarısız';

  @override
  String get loadingText => 'Yükleniyor...';

  @override
  String get noMoreText => 'Daha fazla veri yok';

  @override
  String get refreshCompleteText => 'Yenileme tamamlandı';

  @override
  String get refreshFailedText => 'Yenileme başarısız';

  @override
  String get refreshingText => 'Yenileniyor...';
}
