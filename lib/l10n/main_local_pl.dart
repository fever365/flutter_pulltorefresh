// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPulltorefreshPl extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshPl([String locale = 'pl']) : super(locale);

  @override
  String get canLoadingText => 'Puść, aby załadować więcej';

  @override
  String get canRefreshText => 'Puść, aby odświeżyć';

  @override
  String get canTwoLevelText => 'Puść, aby przejść do drugiego poziomu';

  @override
  String get idleLoadingText => 'Przeciągnij w górę, aby załadować';

  @override
  String get idleRefreshText => 'Przeciągnij w dół, aby odświeżyć';

  @override
  String get loadFailedText => 'Błąd ładowania';

  @override
  String get loadingText => 'Ładowanie...';

  @override
  String get noMoreText => 'Brak więcej danych';

  @override
  String get refreshCompleteText => 'Odświeżanie zakończone';

  @override
  String get refreshFailedText => 'Odświeżanie nie powiodło się';

  @override
  String get refreshingText => 'Odświeżanie...';
}
