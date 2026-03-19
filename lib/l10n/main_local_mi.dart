// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Maori (`mi`).
class AppLocalizationsPulltorefreshMi extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshMi([String locale = 'mi']) : super(locale);

  @override
  String get canLoadingText => 'Tuku kia uta anō';

  @override
  String get canRefreshText => 'Tuku kia whakahou';

  @override
  String get canTwoLevelText => 'Tuku kia tomo ki te papa tuarua';

  @override
  String get idleLoadingText => 'Kumea ki runga kia uta anō';

  @override
  String get idleRefreshText => 'Kumea ki raro kia whakahou';

  @override
  String get loadFailedText => ' i huakina te uta';

  @override
  String get loadingText => 'E uta ana...';

  @override
  String get noMoreText => 'Kāore he raraunga anō';

  @override
  String get refreshCompleteText => 'Kua oti te whakahou';

  @override
  String get refreshFailedText => ' i huakina te whakahou';

  @override
  String get refreshingText => 'E whakahou ana...';
}
