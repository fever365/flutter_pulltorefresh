// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Quechua (`qu`).
class AppLocalizationsPulltorefreshQu extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshQu([String locale = 'qu']) : super(locale);

  @override
  String get canLoadingText => 'Kachariy aswan qallarinapaq';

  @override
  String get canRefreshText => 'Kachariy musuqyachinapaq';

  @override
  String get canTwoLevelText => 'Kachariy iskay ñiqi pataman yaykunapaq';

  @override
  String get idleLoadingText => 'Wichayman chutay aswan qallarinapaq';

  @override
  String get idleRefreshText => 'Urayman chutay musuqyachinapaq';

  @override
  String get loadFailedText => 'Mana qallariyta atikunchu';

  @override
  String get loadingText => 'Qallarichkan...';

  @override
  String get noMoreText => 'Mana kanchu aswan willaykuna';

  @override
  String get refreshCompleteText => 'Musuqyachiy tukusqa';

  @override
  String get refreshFailedText => 'Mana musuqyachiyta atikunchu';

  @override
  String get refreshingText => 'Musuqyachichkan...';
}
