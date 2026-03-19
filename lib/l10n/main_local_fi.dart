// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsPulltorefreshFi extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshFi([String locale = 'fi']) : super(locale);

  @override
  String get canLoadingText => 'Vapauta ladataksesi lisää';

  @override
  String get canRefreshText => 'Vapauta päivittääksesi';

  @override
  String get canTwoLevelText => 'Vapauta siirtyäksesi toiselle tasolle';

  @override
  String get idleLoadingText => 'Vedä ylös ladataksesi lisää';

  @override
  String get idleRefreshText => 'Vedä alas päivittääksesi';

  @override
  String get loadFailedText => 'Lataus epäonnistui';

  @override
  String get loadingText => 'Ladataan…';

  @override
  String get noMoreText => 'Ei enempää tietoja';

  @override
  String get refreshCompleteText => 'Päivitys valmis';

  @override
  String get refreshFailedText => 'Päivitys epäonnistui';

  @override
  String get refreshingText => 'Päivitetään…';
}
