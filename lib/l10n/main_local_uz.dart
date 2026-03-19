// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class AppLocalizationsPulltorefreshUz extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshUz([String locale = 'uz']) : super(locale);

  @override
  String get canLoadingText => 'Ko\'proq yuklash uchun qo\'yib yuboring';

  @override
  String get canRefreshText => 'Yangilash uchun qo\'yib yuboring';

  @override
  String get canTwoLevelText =>
      'Ikkinchi qavatga kirish uchun qo\'yib yuboring';

  @override
  String get idleLoadingText => 'Ko\'proq yuklash uchun yuqoriga torting';

  @override
  String get idleRefreshText => 'Yangilash uchun pastga torting';

  @override
  String get loadFailedText => 'Yuklanmadi';

  @override
  String get loadingText => 'Yuklanmoqda…';

  @override
  String get noMoreText => 'Boshqa ma\'lumot yo\'q';

  @override
  String get refreshCompleteText => 'Yangilash tugallandi';

  @override
  String get refreshFailedText => 'Yangilash amalga oshmadi';

  @override
  String get refreshingText => 'Yangilanmoqda…';
}
