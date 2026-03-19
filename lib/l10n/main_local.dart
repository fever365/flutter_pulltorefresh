import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'main_local_ak.dart';
import 'main_local_am.dart';
import 'main_local_ar.dart';
import 'main_local_as.dart';
import 'main_local_ay.dart';
import 'main_local_az.dart';
import 'main_local_be.dart';
import 'main_local_bg.dart';
import 'main_local_bm.dart';
import 'main_local_bn.dart';
import 'main_local_bs.dart';
import 'main_local_ca.dart';
import 'main_local_co.dart';
import 'main_local_cs.dart';
import 'main_local_cy.dart';
import 'main_local_da.dart';
import 'main_local_de.dart';
import 'main_local_dv.dart';
import 'main_local_ee.dart';
import 'main_local_el.dart';
import 'main_local_en.dart';
import 'main_local_eo.dart';
import 'main_local_es.dart';
import 'main_local_et.dart';
import 'main_local_eu.dart';
import 'main_local_fa.dart';
import 'main_local_fi.dart';
import 'main_local_fil.dart';
import 'main_local_fr.dart';
import 'main_local_fy.dart';
import 'main_local_ga.dart';
import 'main_local_gd.dart';
import 'main_local_gl.dart';
import 'main_local_gn.dart';
import 'main_local_gu.dart';
import 'main_local_ha.dart';
import 'main_local_he.dart';
import 'main_local_hi.dart';
import 'main_local_hr.dart';
import 'main_local_ht.dart';
import 'main_local_hu.dart';
import 'main_local_hy.dart';
import 'main_local_id.dart';
import 'main_local_ig.dart';
import 'main_local_is.dart';
import 'main_local_it.dart';
import 'main_local_ja.dart';
import 'main_local_jv.dart';
import 'main_local_ka.dart';
import 'main_local_kk.dart';
import 'main_local_km.dart';
import 'main_local_kn.dart';
import 'main_local_ko.dart';
import 'main_local_ku.dart';
import 'main_local_ky.dart';
import 'main_local_la.dart';
import 'main_local_lb.dart';
import 'main_local_lg.dart';
import 'main_local_ln.dart';
import 'main_local_lo.dart';
import 'main_local_lt.dart';
import 'main_local_lv.dart';
import 'main_local_mg.dart';
import 'main_local_mi.dart';
import 'main_local_mk.dart';
import 'main_local_ml.dart';
import 'main_local_mn.dart';
import 'main_local_mr.dart';
import 'main_local_ms.dart';
import 'main_local_mt.dart';
import 'main_local_my.dart';
import 'main_local_ne.dart';
import 'main_local_nl.dart';
import 'main_local_no.dart';
import 'main_local_ny.dart';
import 'main_local_om.dart';
import 'main_local_or.dart';
import 'main_local_pa.dart';
import 'main_local_pl.dart';
import 'main_local_ps.dart';
import 'main_local_pt.dart';
import 'main_local_qu.dart';
import 'main_local_ro.dart';
import 'main_local_ru.dart';
import 'main_local_rw.dart';
import 'main_local_sa.dart';
import 'main_local_sd.dart';
import 'main_local_si.dart';
import 'main_local_sk.dart';
import 'main_local_sl.dart';
import 'main_local_sm.dart';
import 'main_local_sn.dart';
import 'main_local_so.dart';
import 'main_local_sq.dart';
import 'main_local_sr.dart';
import 'main_local_st.dart';
import 'main_local_su.dart';
import 'main_local_sv.dart';
import 'main_local_sw.dart';
import 'main_local_ta.dart';
import 'main_local_te.dart';
import 'main_local_tg.dart';
import 'main_local_th.dart';
import 'main_local_ti.dart';
import 'main_local_tk.dart';
import 'main_local_tl.dart';
import 'main_local_tr.dart';
import 'main_local_ts.dart';
import 'main_local_tt.dart';
import 'main_local_ug.dart';
import 'main_local_uk.dart';
import 'main_local_ur.dart';
import 'main_local_uz.dart';
import 'main_local_vi.dart';
import 'main_local_xh.dart';
import 'main_local_yi.dart';
import 'main_local_yo.dart';
import 'main_local_zh.dart';
import 'main_local_zu.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizationsPulltorefresh
/// returned by `AppLocalizationsPulltorefresh.of(context)`.
///
/// Applications need to include `AppLocalizationsPulltorefresh.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/main_local.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizationsPulltorefresh.localizationsDelegates,
///   supportedLocales: AppLocalizationsPulltorefresh.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizationsPulltorefresh.supportedLocales
/// property.
abstract class AppLocalizationsPulltorefresh {
  AppLocalizationsPulltorefresh(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizationsPulltorefresh? of(BuildContext context) {
    return Localizations.of<AppLocalizationsPulltorefresh>(
        context, AppLocalizationsPulltorefresh);
  }

  static const LocalizationsDelegate<AppLocalizationsPulltorefresh> delegate =
      _AppLocalizationsPulltorefreshDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ak'),
    Locale('am'),
    Locale('ar'),
    Locale('as'),
    Locale('ay'),
    Locale('az'),
    Locale('be'),
    Locale('bg'),
    Locale('bm'),
    Locale('bn'),
    Locale('bs'),
    Locale('ca'),
    Locale('co'),
    Locale('cs'),
    Locale('cy'),
    Locale('da'),
    Locale('de'),
    Locale('dv'),
    Locale('ee'),
    Locale('el'),
    Locale('en'),
    Locale('eo'),
    Locale('es'),
    Locale('et'),
    Locale('eu'),
    Locale('fa'),
    Locale('fi'),
    Locale('fil'),
    Locale('fr'),
    Locale('fy'),
    Locale('ga'),
    Locale('gd'),
    Locale('gl'),
    Locale('gn'),
    Locale('gu'),
    Locale('ha'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('ht'),
    Locale('hu'),
    Locale('hy'),
    Locale('id'),
    Locale('ig'),
    Locale('is'),
    Locale('it'),
    Locale('ja'),
    Locale('jv'),
    Locale('ka'),
    Locale('kk'),
    Locale('km'),
    Locale('kn'),
    Locale('ko'),
    Locale('ku'),
    Locale('ky'),
    Locale('la'),
    Locale('lb'),
    Locale('lg'),
    Locale('ln'),
    Locale('lo'),
    Locale('lt'),
    Locale('lv'),
    Locale('mg'),
    Locale('mi'),
    Locale('mk'),
    Locale('ml'),
    Locale('mn'),
    Locale('mr'),
    Locale('ms'),
    Locale('mt'),
    Locale('my'),
    Locale('ne'),
    Locale('nl'),
    Locale('no'),
    Locale('ny'),
    Locale('om'),
    Locale('or'),
    Locale('pa'),
    Locale('pl'),
    Locale('ps'),
    Locale('pt'),
    Locale('qu'),
    Locale('ro'),
    Locale('ru'),
    Locale('rw'),
    Locale('sa'),
    Locale('sd'),
    Locale('si'),
    Locale('sk'),
    Locale('sl'),
    Locale('sm'),
    Locale('sn'),
    Locale('so'),
    Locale('sq'),
    Locale('sr'),
    Locale('st'),
    Locale('su'),
    Locale('sv'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('tg'),
    Locale('th'),
    Locale('ti'),
    Locale('tk'),
    Locale('tl'),
    Locale('tr'),
    Locale('ts'),
    Locale('tt'),
    Locale('ug'),
    Locale('uk'),
    Locale('ur'),
    Locale('uz'),
    Locale('vi'),
    Locale('xh'),
    Locale('yi'),
    Locale('yo'),
    Locale('zh'),
    Locale('zh', 'HK'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
    Locale('zh', 'TW'),
    Locale('zh', 'CN'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
    Locale('zu')
  ];

  /// No description provided for @canLoadingText.
  ///
  /// In zh, this message translates to:
  /// **'松手开始加载数据'**
  String get canLoadingText;

  /// No description provided for @canRefreshText.
  ///
  /// In zh, this message translates to:
  /// **'松开开始刷新数据'**
  String get canRefreshText;

  /// No description provided for @canTwoLevelText.
  ///
  /// In zh, this message translates to:
  /// **'释放手势,进入二楼'**
  String get canTwoLevelText;

  /// No description provided for @idleLoadingText.
  ///
  /// In zh, this message translates to:
  /// **'上拉加载'**
  String get idleLoadingText;

  /// No description provided for @idleRefreshText.
  ///
  /// In zh, this message translates to:
  /// **'下拉刷新'**
  String get idleRefreshText;

  /// No description provided for @loadFailedText.
  ///
  /// In zh, this message translates to:
  /// **'加载失败'**
  String get loadFailedText;

  /// No description provided for @loadingText.
  ///
  /// In zh, this message translates to:
  /// **'加载中…'**
  String get loadingText;

  /// No description provided for @noMoreText.
  ///
  /// In zh, this message translates to:
  /// **'没有更多数据了'**
  String get noMoreText;

  /// No description provided for @refreshCompleteText.
  ///
  /// In zh, this message translates to:
  /// **'刷新成功'**
  String get refreshCompleteText;

  /// No description provided for @refreshFailedText.
  ///
  /// In zh, this message translates to:
  /// **'刷新失败'**
  String get refreshFailedText;

  /// No description provided for @refreshingText.
  ///
  /// In zh, this message translates to:
  /// **'刷新中…'**
  String get refreshingText;
}

class _AppLocalizationsPulltorefreshDelegate
    extends LocalizationsDelegate<AppLocalizationsPulltorefresh> {
  const _AppLocalizationsPulltorefreshDelegate();

  @override
  Future<AppLocalizationsPulltorefresh> load(Locale locale) {
    return SynchronousFuture<AppLocalizationsPulltorefresh>(
        lookupAppLocalizationsPulltorefresh(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ak',
        'am',
        'ar',
        'as',
        'ay',
        'az',
        'be',
        'bg',
        'bm',
        'bn',
        'bs',
        'ca',
        'co',
        'cs',
        'cy',
        'da',
        'de',
        'dv',
        'ee',
        'el',
        'en',
        'eo',
        'es',
        'et',
        'eu',
        'fa',
        'fi',
        'fil',
        'fr',
        'fy',
        'ga',
        'gd',
        'gl',
        'gn',
        'gu',
        'ha',
        'he',
        'hi',
        'hr',
        'ht',
        'hu',
        'hy',
        'id',
        'ig',
        'is',
        'it',
        'ja',
        'jv',
        'ka',
        'kk',
        'km',
        'kn',
        'ko',
        'ku',
        'ky',
        'la',
        'lb',
        'lg',
        'ln',
        'lo',
        'lt',
        'lv',
        'mg',
        'mi',
        'mk',
        'ml',
        'mn',
        'mr',
        'ms',
        'mt',
        'my',
        'ne',
        'nl',
        'no',
        'ny',
        'om',
        'or',
        'pa',
        'pl',
        'ps',
        'pt',
        'qu',
        'ro',
        'ru',
        'rw',
        'sa',
        'sd',
        'si',
        'sk',
        'sl',
        'sm',
        'sn',
        'so',
        'sq',
        'sr',
        'st',
        'su',
        'sv',
        'sw',
        'ta',
        'te',
        'tg',
        'th',
        'ti',
        'tk',
        'tl',
        'tr',
        'ts',
        'tt',
        'ug',
        'uk',
        'ur',
        'uz',
        'vi',
        'xh',
        'yi',
        'yo',
        'zh',
        'zu'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsPulltorefreshDelegate old) => false;
}

AppLocalizationsPulltorefresh lookupAppLocalizationsPulltorefresh(
    Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hant':
            return AppLocalizationsPulltorefreshZhHant();
          case 'Hans':
            return AppLocalizationsPulltorefreshZhHans();
        }
        break;
      }
  }

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'HK':
            return AppLocalizationsPulltorefreshZhHk();
          case 'TW':
            return AppLocalizationsPulltorefreshZhTw();
          case 'CN':
            return AppLocalizationsPulltorefreshZhCn();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ak':
      return AppLocalizationsPulltorefreshAk();
    case 'am':
      return AppLocalizationsPulltorefreshAm();
    case 'ar':
      return AppLocalizationsPulltorefreshAr();
    case 'as':
      return AppLocalizationsPulltorefreshAs();
    case 'ay':
      return AppLocalizationsPulltorefreshAy();
    case 'az':
      return AppLocalizationsPulltorefreshAz();
    case 'be':
      return AppLocalizationsPulltorefreshBe();
    case 'bg':
      return AppLocalizationsPulltorefreshBg();
    case 'bm':
      return AppLocalizationsPulltorefreshBm();
    case 'bn':
      return AppLocalizationsPulltorefreshBn();
    case 'bs':
      return AppLocalizationsPulltorefreshBs();
    case 'ca':
      return AppLocalizationsPulltorefreshCa();
    case 'co':
      return AppLocalizationsPulltorefreshCo();
    case 'cs':
      return AppLocalizationsPulltorefreshCs();
    case 'cy':
      return AppLocalizationsPulltorefreshCy();
    case 'da':
      return AppLocalizationsPulltorefreshDa();
    case 'de':
      return AppLocalizationsPulltorefreshDe();
    case 'dv':
      return AppLocalizationsPulltorefreshDv();
    case 'ee':
      return AppLocalizationsPulltorefreshEe();
    case 'el':
      return AppLocalizationsPulltorefreshEl();
    case 'en':
      return AppLocalizationsPulltorefreshEn();
    case 'eo':
      return AppLocalizationsPulltorefreshEo();
    case 'es':
      return AppLocalizationsPulltorefreshEs();
    case 'et':
      return AppLocalizationsPulltorefreshEt();
    case 'eu':
      return AppLocalizationsPulltorefreshEu();
    case 'fa':
      return AppLocalizationsPulltorefreshFa();
    case 'fi':
      return AppLocalizationsPulltorefreshFi();
    case 'fil':
      return AppLocalizationsPulltorefreshFil();
    case 'fr':
      return AppLocalizationsPulltorefreshFr();
    case 'fy':
      return AppLocalizationsPulltorefreshFy();
    case 'ga':
      return AppLocalizationsPulltorefreshGa();
    case 'gd':
      return AppLocalizationsPulltorefreshGd();
    case 'gl':
      return AppLocalizationsPulltorefreshGl();
    case 'gn':
      return AppLocalizationsPulltorefreshGn();
    case 'gu':
      return AppLocalizationsPulltorefreshGu();
    case 'ha':
      return AppLocalizationsPulltorefreshHa();
    case 'he':
      return AppLocalizationsPulltorefreshHe();
    case 'hi':
      return AppLocalizationsPulltorefreshHi();
    case 'hr':
      return AppLocalizationsPulltorefreshHr();
    case 'ht':
      return AppLocalizationsPulltorefreshHt();
    case 'hu':
      return AppLocalizationsPulltorefreshHu();
    case 'hy':
      return AppLocalizationsPulltorefreshHy();
    case 'id':
      return AppLocalizationsPulltorefreshId();
    case 'ig':
      return AppLocalizationsPulltorefreshIg();
    case 'is':
      return AppLocalizationsPulltorefreshIs();
    case 'it':
      return AppLocalizationsPulltorefreshIt();
    case 'ja':
      return AppLocalizationsPulltorefreshJa();
    case 'jv':
      return AppLocalizationsPulltorefreshJv();
    case 'ka':
      return AppLocalizationsPulltorefreshKa();
    case 'kk':
      return AppLocalizationsPulltorefreshKk();
    case 'km':
      return AppLocalizationsPulltorefreshKm();
    case 'kn':
      return AppLocalizationsPulltorefreshKn();
    case 'ko':
      return AppLocalizationsPulltorefreshKo();
    case 'ku':
      return AppLocalizationsPulltorefreshKu();
    case 'ky':
      return AppLocalizationsPulltorefreshKy();
    case 'la':
      return AppLocalizationsPulltorefreshLa();
    case 'lb':
      return AppLocalizationsPulltorefreshLb();
    case 'lg':
      return AppLocalizationsPulltorefreshLg();
    case 'ln':
      return AppLocalizationsPulltorefreshLn();
    case 'lo':
      return AppLocalizationsPulltorefreshLo();
    case 'lt':
      return AppLocalizationsPulltorefreshLt();
    case 'lv':
      return AppLocalizationsPulltorefreshLv();
    case 'mg':
      return AppLocalizationsPulltorefreshMg();
    case 'mi':
      return AppLocalizationsPulltorefreshMi();
    case 'mk':
      return AppLocalizationsPulltorefreshMk();
    case 'ml':
      return AppLocalizationsPulltorefreshMl();
    case 'mn':
      return AppLocalizationsPulltorefreshMn();
    case 'mr':
      return AppLocalizationsPulltorefreshMr();
    case 'ms':
      return AppLocalizationsPulltorefreshMs();
    case 'mt':
      return AppLocalizationsPulltorefreshMt();
    case 'my':
      return AppLocalizationsPulltorefreshMy();
    case 'ne':
      return AppLocalizationsPulltorefreshNe();
    case 'nl':
      return AppLocalizationsPulltorefreshNl();
    case 'no':
      return AppLocalizationsPulltorefreshNo();
    case 'ny':
      return AppLocalizationsPulltorefreshNy();
    case 'om':
      return AppLocalizationsPulltorefreshOm();
    case 'or':
      return AppLocalizationsPulltorefreshOr();
    case 'pa':
      return AppLocalizationsPulltorefreshPa();
    case 'pl':
      return AppLocalizationsPulltorefreshPl();
    case 'ps':
      return AppLocalizationsPulltorefreshPs();
    case 'pt':
      return AppLocalizationsPulltorefreshPt();
    case 'qu':
      return AppLocalizationsPulltorefreshQu();
    case 'ro':
      return AppLocalizationsPulltorefreshRo();
    case 'ru':
      return AppLocalizationsPulltorefreshRu();
    case 'rw':
      return AppLocalizationsPulltorefreshRw();
    case 'sa':
      return AppLocalizationsPulltorefreshSa();
    case 'sd':
      return AppLocalizationsPulltorefreshSd();
    case 'si':
      return AppLocalizationsPulltorefreshSi();
    case 'sk':
      return AppLocalizationsPulltorefreshSk();
    case 'sl':
      return AppLocalizationsPulltorefreshSl();
    case 'sm':
      return AppLocalizationsPulltorefreshSm();
    case 'sn':
      return AppLocalizationsPulltorefreshSn();
    case 'so':
      return AppLocalizationsPulltorefreshSo();
    case 'sq':
      return AppLocalizationsPulltorefreshSq();
    case 'sr':
      return AppLocalizationsPulltorefreshSr();
    case 'st':
      return AppLocalizationsPulltorefreshSt();
    case 'su':
      return AppLocalizationsPulltorefreshSu();
    case 'sv':
      return AppLocalizationsPulltorefreshSv();
    case 'sw':
      return AppLocalizationsPulltorefreshSw();
    case 'ta':
      return AppLocalizationsPulltorefreshTa();
    case 'te':
      return AppLocalizationsPulltorefreshTe();
    case 'tg':
      return AppLocalizationsPulltorefreshTg();
    case 'th':
      return AppLocalizationsPulltorefreshTh();
    case 'ti':
      return AppLocalizationsPulltorefreshTi();
    case 'tk':
      return AppLocalizationsPulltorefreshTk();
    case 'tl':
      return AppLocalizationsPulltorefreshTl();
    case 'tr':
      return AppLocalizationsPulltorefreshTr();
    case 'ts':
      return AppLocalizationsPulltorefreshTs();
    case 'tt':
      return AppLocalizationsPulltorefreshTt();
    case 'ug':
      return AppLocalizationsPulltorefreshUg();
    case 'uk':
      return AppLocalizationsPulltorefreshUk();
    case 'ur':
      return AppLocalizationsPulltorefreshUr();
    case 'uz':
      return AppLocalizationsPulltorefreshUz();
    case 'vi':
      return AppLocalizationsPulltorefreshVi();
    case 'xh':
      return AppLocalizationsPulltorefreshXh();
    case 'yi':
      return AppLocalizationsPulltorefreshYi();
    case 'yo':
      return AppLocalizationsPulltorefreshYo();
    case 'zh':
      return AppLocalizationsPulltorefreshZh();
    case 'zu':
      return AppLocalizationsPulltorefreshZu();
  }

  throw FlutterError(
      'AppLocalizationsPulltorefresh.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
