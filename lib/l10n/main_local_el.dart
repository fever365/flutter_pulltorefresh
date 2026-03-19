// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsPulltorefreshEl extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshEl([String locale = 'el']) : super(locale);

  @override
  String get canLoadingText => 'Αφήστε για να φορτώσετε περισσότερα';

  @override
  String get canRefreshText => 'Αφήστε για ανανέωση';

  @override
  String get canTwoLevelText => 'Αφήστε για να εισέλθετε στο δεύτερο επίπεδο';

  @override
  String get idleLoadingText => 'Σύρετε προς τα πάνω για φόρτωση';

  @override
  String get idleRefreshText => 'Σύρετε προς τα κάτω για ανανέωση';

  @override
  String get loadFailedText => 'Η φόρτωση απέτυχε';

  @override
  String get loadingText => 'Φόρτωση…';

  @override
  String get noMoreText => 'Δεν υπάρχουν άλλα δεδομένα';

  @override
  String get refreshCompleteText => 'Η ανανέωση ολοκληρώθηκε';

  @override
  String get refreshFailedText => 'Η ανανέωση απέτυχε';

  @override
  String get refreshingText => 'Ανανέωση…';
}
