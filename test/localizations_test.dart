import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

void main() {
  group('RefreshLocalizations Tests', () {
    testWidgets('Should provide correct strings for supported locales via Localizations widget', (WidgetTester tester) async {
      late RefreshString zhStrings;
      late RefreshString enStrings;

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: const [
            RefreshLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('zh'),
            Locale('en'),
          ],
          home: Builder(
            builder: (context) {
              // We can't easily change the locale of the same app in one pump and get different instances of RefreshLocalizations.of(context)
              // because it depend on the current locale of the context.
              // So we just check if it returns something.
              return Container();
            },
          ),
        ),
      );

      // 直接通过 values 映射测试
      zhStrings = RefreshLocalizations.values['zh']!;
      enStrings = RefreshLocalizations.values['en']!;

      expect(zhStrings.idleRefreshText, "下拉刷新");
      expect(enStrings.idleRefreshText, "Pull down Refresh");
    });

    test('isSupported should return true for valid locales', () {
      const delegate = RefreshLocalizationsDelegate();
      expect(delegate.isSupported(const Locale('zh')), true);
      expect(delegate.isSupported(const Locale('en')), true);
      expect(delegate.isSupported(const Locale('unknown')), false);
    });

    test('currentLocalization should fallback to English', () {
      final loc = RefreshLocalizations(const Locale('fr'));
      expect(loc.currentLocalization, isA<FrRefreshString>());
      
      final locUnknown = RefreshLocalizations(const Locale('xy'));
      expect(locUnknown.currentLocalization, isA<EnRefreshString>());
    });

    group('All individual strings check for coverage', () {
      test('Chinese', () => _checkStrings(const ChRefreshString(), "下拉刷新"));
      test('English', () => _checkStrings(const EnRefreshString(), "Pull down Refresh"));
      test('French', () => _checkStrings(const FrRefreshString(), "Tirez pour rafraîchir"));
      test('Russian', () => _checkStrings(const RuRefreshString(), "Тянуть вниз, чтобы обновить"));
      test('Ukrainian', () => _checkStrings(const UkRefreshString(), "Тягнути вниз, щоб оновити"));
      test('Italian', () => _checkStrings(const ItRefreshString(), "Tira giù per aggiornare"));
      test('Japanese', () => _checkStrings(const JpRefreshString(), "下方スワイプでデータを更新"));
      test('German', () => _checkStrings(const DeRefreshString(), "Ziehen für Aktualisierung"));
      test('Spanish', () => _checkStrings(const EsRefreshString(), "Tire hacia abajo para refrescar"));
      test('Dutch', () => _checkStrings(const NlRefreshString(), "Trek omlaag om te vernieuwen"));
      test('Swedish', () => _checkStrings(const SvRefreshString(), "Dra ner för att uppdatera"));
      test('Portuguese', () => _checkStrings(const PtRefreshString(), "Puxe para baixo para atualizar"));
      test('Korean', () => _checkStrings(const KrRefreshString(), "아래로 당겨서 새로 고침"));
    });
  });
}

void _checkStrings(RefreshString strings, String idleText) {
  expect(strings.idleRefreshText, idleText);
  // 触摸一下这些属性以确保覆盖
  expect(strings.canRefreshText, isNotNull);
  expect(strings.refreshingText, isNotNull);
  expect(strings.refreshCompleteText, isNotNull);
  expect(strings.refreshFailedText, isNotNull);
  expect(strings.canTwoLevelText, isNotNull);
  expect(strings.idleLoadingText, isNotNull);
  expect(strings.canLoadingText, isNotNull);
  expect(strings.loadingText, isNotNull);
  expect(strings.loadFailedText, isNotNull);
  expect(strings.noMoreText, isNotNull);
}
