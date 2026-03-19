// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Armenian (`hy`).
class AppLocalizationsPulltorefreshHy extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshHy([String locale = 'hy']) : super(locale);

  @override
  String get canLoadingText => 'Բաց թողեք ավելին բեռնելու համար';

  @override
  String get canRefreshText => 'Բաց թողեք թարմացնելու համար';

  @override
  String get canTwoLevelText => 'Բաց թողեք երկրորդ մակարդակ մտնելու համար';

  @override
  String get idleLoadingText => 'Քաշեք վերև ավելին բեռնելու համար';

  @override
  String get idleRefreshText => 'Քաշեք ներքև թարմացնելու համար';

  @override
  String get loadFailedText => 'Բեռնումը ձախողվեց';

  @override
  String get loadingText => 'Բեռնվում է…';

  @override
  String get noMoreText => 'Այլևս տվյալներ չկան';

  @override
  String get refreshCompleteText => 'Թարմացումը ավարտվեց';

  @override
  String get refreshFailedText => 'Թարմացումը ձախողվեց';

  @override
  String get refreshingText => 'Թարմացվում է…';
}
