import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pull_to_refresh/src/internals/refresh_localizations.dart';
import 'package:pull_to_refresh/src/internals/slivers.dart';
import 'package:pull_to_refresh/l10n/main_local.dart';

void main() {
  group('RefreshLocalizations Tests (AppLocalizationsPulltorefresh)', () {
    testWidgets('Should provide correct strings via Localizations widget', (WidgetTester tester) async {
      late AppLocalizationsPulltorefresh zhStrings;
      late AppLocalizationsPulltorefresh enStrings;

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizationsPulltorefresh.localizationsDelegates,
          supportedLocales: AppLocalizationsPulltorefresh.supportedLocales,
          locale: const Locale('zh'),
          home: Builder(
            builder: (context) {
              zhStrings = AppLocalizationsPulltorefresh.of(context)!;
              return Container();
            },
          ),
        ),
      );
      await tester.pump();
      expect(zhStrings.idleRefreshText, "下拉刷新");

      // Test with English
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizationsPulltorefresh.localizationsDelegates,
          supportedLocales: AppLocalizationsPulltorefresh.supportedLocales,
          locale: const Locale('en'),
          home: Builder(
            builder: (context) {
              enStrings = AppLocalizationsPulltorefresh.of(context)!;
              return Container();
            },
          ),
        ),
      );
      await tester.pump();
      expect(enStrings.idleRefreshText, "Pull down Refresh");
    });

    test('isSupported should return true for all generated locales', () {
      const delegate = AppLocalizationsPulltorefresh.delegate;
      expect(delegate.isSupported(const Locale('zh')), true);
      expect(delegate.isSupported(const Locale('en')), true);
      expect(delegate.isSupported(const Locale('fr')), true);
      expect(delegate.isSupported(const Locale('ja')), true);
      expect(delegate.isSupported(const Locale('eo')), true); // New language!
      expect(delegate.isSupported(const Locale('unknown')), false);
    });

    group('Spot check individual languages via lookup', () {
      test('Chinese (zh)', () => _checkLookup(const Locale('zh'), "下拉刷新"));
      test('English (en)', () => _checkLookup(const Locale('en'), "Pull down Refresh"));
      test('French (fr)', () => _checkLookup(const Locale('fr'), "Tirez pour rafraîchir"));
      test('Russian (ru)', () => _checkLookup(const Locale('ru'), "Тянуть вниз, чтобы обновить"));
      test('Japanese (ja)', () => _checkLookup(const Locale('ja'), "下方スワイプでデータを更新"));
      test('Esperanto (eo)', () => _checkLookup(const Locale('eo'), "Tiri malsupren por refreŝigi"));
    });
    
    test('RefreshLocalizations compatibility wrapper check', () {
      final zh = RefreshLocalizations.getValues(const Locale('zh'));
      expect(zh.idleRefreshText, "下拉刷新");
      
      final en = RefreshLocalizations.getValues(const Locale('en'));
      expect(en.idleRefreshText, "Pull down Refresh");
    });
  });
}

void _checkLookup(Locale locale, String expectedIdleText) {
  final strings = lookupAppLocalizationsPulltorefresh(locale);
  expect(strings.idleRefreshText, expectedIdleText);
  // Touch all properties for coverage
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
