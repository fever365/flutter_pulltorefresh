/*
 * Author: Jpeng
 * Email: peng8350@gmail.com
 * Time:  2019-09-06 23:18
 */

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Implementation of localized strings for the [ClassicHeader],[ClassicFooter],[TwoLevelHeader]
class RefreshLocalizations {
  final Locale locale;

  RefreshLocalizations(this.locale);

  static final Map<String, RefreshString> values = {
    'en': EnRefreshString(),
    'zh': ChRefreshString(),
    'fr': FrRefreshString(),
    'ru': RuRefreshString(),
    'uk': UkRefreshString(),
    'it': ItRefreshString(),
    'ja': JpRefreshString(),
    'de': DeRefreshString(),
    'es': EsRefreshString(),
    'nl': NlRefreshString(),
    'sv': SvRefreshString(),
    'pt': PtRefreshString(),
    'ko': KrRefreshString(),
  };

  RefreshString? get currentLocalization {
    return values[locale.languageCode] ?? values['en'];
  }

  static const RefreshLocalizationsDelegate delegate =
      RefreshLocalizationsDelegate();

  static RefreshLocalizations? of(BuildContext context) {
    return Localizations.of(context, RefreshLocalizations);
  }

  /// 获取所有支持的语言代码
  static List<String> get supportedLanguages => values.keys.toList();
}

class RefreshLocalizationsDelegate
    extends LocalizationsDelegate<RefreshLocalizations> {
  const RefreshLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return RefreshLocalizations.supportedLanguages.contains(locale.languageCode);
  }

  @override
  Future<RefreshLocalizations> load(Locale locale) {
    return SynchronousFuture<RefreshLocalizations>(
        RefreshLocalizations(locale));
  }

  @override
  bool shouldReload(LocalizationsDelegate<RefreshLocalizations> old) {
    return false;
  }
}

/// interface implements different language
abstract class RefreshString {
  const RefreshString();

  /// pull down refresh idle text
  String? get idleRefreshText;

  ///  tips user to release gesture to refresh at time
  String? get canRefreshText;

  /// refreshing state text
  String? get refreshingText;

  /// refresh completed text
  String? get refreshCompleteText;

  /// refresh failed text
  String? get refreshFailedText;

  /// enable open twoLevel and tips user to release gesture to enter two level
  String? get canTwoLevelText;

  /// pull down load idle text
  String? get idleLoadingText;

  /// tips user to release gesture to load more at time
  String? get canLoadingText;

  /// loading state text
  String? get loadingText;

  /// load failed text
  String? get loadFailedText;

  /// no more data text
  String? get noMoreText;
}

/// Chinese
class ChRefreshString extends RefreshString {
  const ChRefreshString();
  @override
  String? get canLoadingText => "松手开始加载数据";
  @override
  String? get canRefreshText => "松开开始刷新数据";
  @override
  String? get canTwoLevelText => "释放手势,进入二楼";
  @override
  String? get idleLoadingText => "上拉加载";
  @override
  String? get idleRefreshText => "下拉刷新";
  @override
  String? get loadFailedText => "加载失败";
  @override
  String? get loadingText => "加载中…";
  @override
  String? get noMoreText => "没有更多数据了";
  @override
  String? get refreshCompleteText => "刷新成功";
  @override
  String? get refreshFailedText => "刷新失败";
  @override
  String? get refreshingText => "刷新中…";
}

/// English
class EnRefreshString extends RefreshString {
  const EnRefreshString();
  @override
  String? get canLoadingText => "Release to load more";
  @override
  String? get canRefreshText => "Release to refresh";
  @override
  String? get canTwoLevelText => "Release to enter secondfloor";
  @override
  String? get idleLoadingText => "Pull up Load more";
  @override
  String? get idleRefreshText => "Pull down Refresh";
  @override
  String? get loadFailedText => "Load Failed";
  @override
  String? get loadingText => "Loading…";
  @override
  String? get noMoreText => "No more data";
  @override
  String? get refreshCompleteText => "Refresh completed";
  @override
  String? get refreshFailedText => "Refresh failed";
  @override
  String? get refreshingText => "Refreshing…";
}

/// French
class FrRefreshString extends RefreshString {
  const FrRefreshString();
  @override
  String? get canLoadingText => "Relâchez pour charger davantage";
  @override
  String? get canRefreshText => "Relâchez pour rafraîchir";
  @override
  String? get canTwoLevelText => "Relâchez pour entrer secondfloor";
  @override
  String? get idleLoadingText => "Tirez pour charger davantage";
  @override
  String? get idleRefreshText => "Tirez pour rafraîchir";
  @override
  String? get loadFailedText => "Chargement échoué";
  @override
  String? get loadingText => "Chargement…";
  @override
  String? get noMoreText => "Aucune autre donnée";
  @override
  String? get refreshCompleteText => "Rafraîchissement terminé";
  @override
  String? get refreshFailedText => "Rafraîchissement échoué";
  @override
  String? get refreshingText => "Rafraîchissement…";
}

/// Russian
class RuRefreshString extends RefreshString {
  const RuRefreshString();
  @override
  String? get canLoadingText => "Отпустите, чтобы загрузить больше";
  @override
  String? get canRefreshText => "Отпустите, чтобы обновить";
  @override
  String? get canTwoLevelText => "Отпустите, чтобы войти на второй уровень";
  @override
  String? get idleLoadingText => "Тянуть вверх, чтобы загрузить больше";
  @override
  String? get idleRefreshText => "Тянуть вниз, чтобы обновить";
  @override
  String? get loadFailedText => "Ошибка загрузки";
  @override
  String? get loadingText => "Загрузка…";
  @override
  String? get noMoreText => "Больше данных нет";
  @override
  String? get refreshCompleteText => "Обновление завершено";
  @override
  String? get refreshFailedText => "Не удалось обновить";
  @override
  String? get refreshingText => "Обновление…";
}

// Ukrainian
class UkRefreshString extends RefreshString {
  const UkRefreshString();
  @override
  String? get canLoadingText => "Відпустіть, щоб завантажити більше";
  @override
  String? get canRefreshText => "Відпустіть, щоб оновити";
  @override
  String? get canTwoLevelText => "Відпустіть, щоб увійти на другий рівень";
  @override
  String? get idleLoadingText => "Тягнути вгору, щоб завантажити більше";
  @override
  String? get idleRefreshText => "Тягнути вниз, щоб оновити";
  @override
  String? get loadFailedText => "Помилка завантаження";
  @override
  String? get loadingText => "Завантаження…";
  @override
  String? get noMoreText => "Більше даних немає";
  @override
  String? get refreshCompleteText => "Оновлення завершено";
  @override
  String? get refreshFailedText => "Не вдалося оновити";
  @override
  String? get refreshingText => "Оновлення…";
}

/// Italian
class ItRefreshString extends RefreshString {
  const ItRefreshString();
  @override
  String? get canLoadingText => "Rilascia per caricare altro";
  @override
  String? get canRefreshText => "Rilascia per aggiornare";
  @override
  String? get canTwoLevelText => "Rilascia per accedere a secondfloor";
  @override
  String? get idleLoadingText => "Tira per caricare altro";
  @override
  String? get idleRefreshText => "Tira giù per aggiornare";
  @override
  String? get loadFailedText => "Caricamento fallito";
  @override
  String? get loadingText => "Caricamento…";
  @override
  String? get noMoreText => "Nessun altro elemento";
  @override
  String? get refreshCompleteText => "Aggiornamento completato";
  @override
  String? get refreshFailedText => "Aggiornamento fallito";
  @override
  String? get refreshingText => "Aggiornamento…";
}

/// Japanese
class JpRefreshString extends RefreshString {
  const JpRefreshString();
  @override
  String? get canLoadingText => "指を離して更に読み込む";
  @override
  String? get canRefreshText => "指を離して更新";
  @override
  String? get canTwoLevelText => "指を離して2段目を表示";
  @override
  String? get idleLoadingText => "上方スワイプで更に読み込む";
  @override
  String? get idleRefreshText => "下方スワイプでデータを更新";
  @override
  String? get loadFailedText => "読み込みが失敗しました";
  @override
  String? get loadingText => "読み込み中…";
  @override
  String? get noMoreText => "データはありません";
  @override
  String? get refreshCompleteText => "更新完了";
  @override
  String? get refreshFailedText => "更新が失敗しました";
  @override
  String? get refreshingText => "更新中…";
}

/// German
class DeRefreshString extends RefreshString {
  const DeRefreshString();
  @override
  String? get canLoadingText => "Loslassen, um mehr zu laden";
  @override
  String? get canRefreshText => "Zum Aktualisieren loslassen";
  @override
  String? get canTwoLevelText => "Lassen Sie los, um den zweiten Stock zu betreten";
  @override
  String? get idleLoadingText => "Hochziehen, mehr laden";
  @override
  String? get idleRefreshText => "Ziehen für Aktualisierung";
  @override
  String? get loadFailedText => "Laden ist fehlgeschlagen";
  @override
  String? get loadingText => "Lade…";
  @override
  String? get noMoreText => "Keine weitere Daten";
  @override
  String? get refreshCompleteText => "Aktualisierung fertig";
  @override
  String? get refreshFailedText => "Aktualisierung fehlgeschlagen";
  @override
  String? get refreshingText => "Aktualisiere…";
}

/// Spanish
class EsRefreshString extends RefreshString {
  const EsRefreshString();
  @override
  String? get canLoadingText => "Suelte para cargar más";
  @override
  String? get canRefreshText => "Suelte para actualizar";
  @override
  String? get canTwoLevelText => "Suelte para entrar al segundo nivel";
  @override
  String? get idleLoadingText => "Tire hacia arriba para cargar más";
  @override
  String? get idleRefreshText => "Tire hacia abajo para refrescar";
  @override
  String? get loadFailedText => "Error de carga";
  @override
  String? get loadingText => "Cargando…";
  @override
  String? get noMoreText => "No hay más datos disponibles";
  @override
  String? get refreshCompleteText => "Actualización completada";
  @override
  String? get refreshFailedText => "Error al actualizar";
  @override
  String? get refreshingText => "Actualizando…";
}

/// Dutch
class NlRefreshString extends RefreshString {
  const NlRefreshString();
  @override
  String? get canLoadingText => "Laat los om meer te laden";
  @override
  String? get canRefreshText => "Laat los om te vernieuwen";
  @override
  String? get canTwoLevelText => "Laat los om naar tweede verdieping te gaan";
  @override
  String? get idleLoadingText => "Trek omhoog om meer te laden";
  @override
  String? get idleRefreshText => "Trek omlaag om te vernieuwen";
  @override
  String? get loadFailedText => "Laden mislukt";
  @override
  String? get loadingText => "Laden…";
  @override
  String? get noMoreText => "Geen data meer";
  @override
  String? get refreshCompleteText => "Vernieuwen voltooid";
  @override
  String? get refreshFailedText => "Vernieuwen mislukt";
  @override
  String? get refreshingText => "Vernieuwen…";
}

/// Swedish
class SvRefreshString extends RefreshString {
  const SvRefreshString();
  @override
  String? get canLoadingText => "Släpp för att ladda mer";
  @override
  String? get canRefreshText => "Släpp för att uppdatera";
  @override
  String? get canTwoLevelText => "Släpp för att gå till andra våningen";
  @override
  String? get idleLoadingText => "Dra upp för att ladda mer";
  @override
  String? get idleRefreshText => "Dra ner för att uppdatera";
  @override
  String? get loadFailedText => "Hämtningen misslyckades";
  @override
  String? get loadingText => "Laddar…";
  @override
  String? get noMoreText => "Ingen mer data";
  @override
  String? get refreshCompleteText => "Uppdaterad";
  @override
  String? get refreshFailedText => "Kunde inte uppdatera";
  @override
  String? get refreshingText => "Uppdaterar…";
}

// Portuguese - Brazil
class PtRefreshString extends RefreshString {
  const PtRefreshString();
  @override
  String? get canLoadingText => "Solte para carregar mais";
  @override
  String? get canRefreshText => "Solte para atualizar";
  @override
  String? get canTwoLevelText => "Solte para entrar no segundo andar";
  @override
  String? get idleLoadingText => "Puxe para cima para carregar mais";
  @override
  String? get idleRefreshText => "Puxe para baixo para atualizar";
  @override
  String? get loadFailedText => "Falha ao carregar";
  @override
  String? get loadingText => "Carregando…";
  @override
  String? get noMoreText => "Não há mais dados";
  @override
  String? get refreshCompleteText => "Atualização completada";
  @override
  String? get refreshFailedText => "Falha ao atualizar";
  @override
  String? get refreshingText => "Atualizando…";
}

/// Korean
class KrRefreshString extends RefreshString {
  const KrRefreshString();
  @override
  String? get canLoadingText => "당겨서 불러오기";
  @override
  String? get canRefreshText => "당겨서 새로 고침";
  @override
  String? get canTwoLevelText => "두 번째 레벨로 이동";
  @override
  String? get idleLoadingText => "위로 당겨서 불러오기";
  @override
  String? get idleRefreshText => "아래로 당겨서 새로 고침";
  @override
  String? get loadFailedText => "로딩에 실패했습니다.";
  @override
  String? get loadingText => "로딩 중…";
  @override
  String? get noMoreText => "데이터가 더 이상 없습니다.";
  @override
  String? get refreshCompleteText => "새로 고침 완료";
  @override
  String? get refreshFailedText => "새로 고침에 실패했습니다.";
  @override
  String? get refreshingText => "새로 고침 중…";
}
