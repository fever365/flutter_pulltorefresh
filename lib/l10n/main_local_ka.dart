// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class AppLocalizationsPulltorefreshKa extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshKa([String locale = 'ka']) : super(locale);

  @override
  String get canLoadingText => 'გაუშვით მეტის ჩასატვირთად';

  @override
  String get canRefreshText => 'გაუშვით განსაახლებლად';

  @override
  String get canTwoLevelText => 'გაუშვით მეორე დონეზე გადასასვლელად';

  @override
  String get idleLoadingText => 'ასწიეთ მეტის ჩასატვირთად';

  @override
  String get idleRefreshText => 'ჩამოსწიეთ განსაახლებლად';

  @override
  String get loadFailedText => 'ჩატვირთვა ვერ მოხერხდა';

  @override
  String get loadingText => 'იტვირთება…';

  @override
  String get noMoreText => 'მეტი მონაცემი არ არის';

  @override
  String get refreshCompleteText => 'განახლება დასრულდა';

  @override
  String get refreshFailedText => 'განახლება ვერ მოხერხდა';

  @override
  String get refreshingText => 'ახლდება…';
}
