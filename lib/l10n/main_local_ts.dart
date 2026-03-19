// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Tsonga (`ts`).
class AppLocalizationsPulltorefreshTs extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshTs([String locale = 'ts']) : super(locale);

  @override
  String get canLoadingText => 'Tshika leswaku u paka swo tala';

  @override
  String get canRefreshText => 'Tshika leswaku u pfuxeta';

  @override
  String get canTwoLevelText => 'Tshika leswaku u nghena eka nivo ya vumbirhi';

  @override
  String get idleLoadingText => 'Koka u ya ehenhla leswaku u paka swo tala';

  @override
  String get idleRefreshText => 'Koka u ya ehansi leswaku u pfuxeta';

  @override
  String get loadFailedText => 'Ku paka ku tsandzile';

  @override
  String get loadingText => 'Ya paka…';

  @override
  String get noMoreText => 'Ku hava data yin\'wana';

  @override
  String get refreshCompleteText => 'Ku pfuxeta ku herile';

  @override
  String get refreshFailedText => 'Ku pfuxeta ku tsandzile';

  @override
  String get refreshingText => 'Ya pfuxeta…';
}
