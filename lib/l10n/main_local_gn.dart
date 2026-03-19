// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Guarani (`gn`).
class AppLocalizationsPulltorefreshGn extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshGn([String locale = 'gn']) : super(locale);

  @override
  String get canLoadingText => 'Pohe ehenondeve';

  @override
  String get canRefreshText => 'Pohe embopyahu';

  @override
  String get canTwoLevelText => 'Pohe oike haguã mokõiha yvate';

  @override
  String get idleLoadingText => 'Embogue yvate embohetave haguã';

  @override
  String get idleRefreshText => 'Embogue yvy embohetave haguã';

  @override
  String get loadFailedText => 'He’ã ehenonde';

  @override
  String get loadingText => 'Oñehenonde…';

  @override
  String get noMoreText => 'Ndaiporivéima mba’ekuaarã';

  @override
  String get refreshCompleteText => 'Oñembopyahupa';

  @override
  String get refreshFailedText => 'He’ã embopyahu';

  @override
  String get refreshingText => 'Oñembopyahu…';
}
