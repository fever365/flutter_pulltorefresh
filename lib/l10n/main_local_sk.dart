// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsPulltorefreshSk extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshSk([String locale = 'sk']) : super(locale);

  @override
  String get canLoadingText => 'Uvoľnením načítate viac';

  @override
  String get canRefreshText => 'Uvoľnením obnovíte';

  @override
  String get canTwoLevelText => 'Uvoľnením vstúpite na druhé poschodie';

  @override
  String get idleLoadingText => 'Potiahnutím nahor načítate viac';

  @override
  String get idleRefreshText => 'Potiahnutím nadol obnovíte';

  @override
  String get loadFailedText => 'Načítanie zlyhalo';

  @override
  String get loadingText => 'Načítava sa...';

  @override
  String get noMoreText => 'Žiadne ďalšie údaje';

  @override
  String get refreshCompleteText => 'Obnovenie dokončené';

  @override
  String get refreshFailedText => 'Obnovenie zlyhalo';

  @override
  String get refreshingText => 'Obnovuje sa...';
}
