// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Irish (`ga`).
class AppLocalizationsPulltorefreshGa extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshGa([String locale = 'ga']) : super(locale);

  @override
  String get canLoadingText => 'Scaoil chun níos mó a luchtú';

  @override
  String get canRefreshText => 'Scaoil chun athnuachan a dhéanamh';

  @override
  String get canTwoLevelText => 'Scaoil chun dul isteach sa dara leibhéal';

  @override
  String get idleLoadingText => 'Tarraing suas chun níos mó a luchtú';

  @override
  String get idleRefreshText => 'Tarraing síos chun athnuachan a dhéanamh';

  @override
  String get loadFailedText => 'Theip ar an luchtú';

  @override
  String get loadingText => 'Ag luchtú…';

  @override
  String get noMoreText => 'Níl níos mó sonraí ann';

  @override
  String get refreshCompleteText => 'Athnuachan críochnaithe';

  @override
  String get refreshFailedText => 'Theip ar an athnuachan';

  @override
  String get refreshingText => 'Ag athnuachan…';
}
