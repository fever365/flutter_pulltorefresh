// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsPulltorefreshLt extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshLt([String locale = 'lt']) : super(locale);

  @override
  String get canLoadingText => 'Atleiskite, kad įkeltumėte daugiau';

  @override
  String get canRefreshText => 'Atleiskite, kad atnaujintumėte';

  @override
  String get canTwoLevelText => 'Atleiskite, kad patektumėte į antrą lygį';

  @override
  String get idleLoadingText => 'Traukite aukštyn, kad įkeltumėte daugiau';

  @override
  String get idleRefreshText => 'Traukite žemyn, kad atnaujintumėte';

  @override
  String get loadFailedText => 'Įkelti nepavyko';

  @override
  String get loadingText => 'Įkeliama...';

  @override
  String get noMoreText => 'Daugiau duomenų nėra';

  @override
  String get refreshCompleteText => 'Atnaujinimas baigtas';

  @override
  String get refreshFailedText => 'Atnaujinti nepavyko';

  @override
  String get refreshingText => 'Atnaujinama...';
}
