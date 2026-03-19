import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

void main() {
  group('Additional Indicators Coverage', () {
    testWidgets('TwoLevelHeader should render', (WidgetTester tester) async {
      final RefreshController controller = RefreshController();
      await tester.pumpWidget(
        MaterialApp(
          home: SmartRefresher(
            controller: controller,
            enableTwoLevel: true,
            header: const TwoLevelHeader(),
            child: ListView(
              children: const [Text('Item 1')],
            ),
          ),
        ),
      );

      await tester.drag(find.byType(Scrollable), const Offset(0, 300), warnIfMissed: false);
      await tester.pump();
      expect(find.byType(TwoLevelHeader, skipOffstage: false), findsOneWidget);
    });

    testWidgets('ClassicHeader with custom icons/text coverage', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SmartRefresher(
            controller: RefreshController(),
            header: const ClassicHeader(
              refreshingText: "Updating...",
              releaseText: "Let go!",
            ),
            child: ListView(children: const [Text('Item')]),
          ),
        ),
      );
      
      await tester.drag(find.byType(Scrollable), const Offset(0, 200), warnIfMissed: false);
      await tester.pump();
      expect(find.text("Let go!"), findsOneWidget);
    });
  });
}
