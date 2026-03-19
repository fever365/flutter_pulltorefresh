// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'main_local.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPulltorefreshPt extends AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefreshPt([String locale = 'pt']) : super(locale);

  @override
  String get canLoadingText => 'Solte para carregar mais';

  @override
  String get canRefreshText => 'Solte para atualizar';

  @override
  String get canTwoLevelText => 'Solte para entrar no segundo andar';

  @override
  String get idleLoadingText => 'Puxe para cima para carregar mais';

  @override
  String get idleRefreshText => 'Puxe para baixo para atualizar';

  @override
  String get loadFailedText => 'Falha ao carregar';

  @override
  String get loadingText => 'Carregando…';

  @override
  String get noMoreText => 'Não há mais dados';

  @override
  String get refreshCompleteText => 'Atualização completada';

  @override
  String get refreshFailedText => 'Falha ao atualizar';

  @override
  String get refreshingText => 'Atualizando…';
}
