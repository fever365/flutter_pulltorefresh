import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

void main() {
  group('Legacy Properties and Logic Coverage', () {
    testWidgets('enableBallisticRefresh true should trigger refresh on fling', (WidgetTester tester) async {
      final RefreshController controller = RefreshController();
      bool refreshed = false;
      
      await tester.pumpWidget(
        MaterialApp(
          home: RefreshConfiguration(
            enableBallisticRefresh: true,
            child: SmartRefresher(
              controller: controller,
              onRefresh: () => refreshed = true,
              child: ListView(children: [Container(height: 100, child: Text("Item"))]),
            ),
          ),
        ),
      );

      // 模拟快速向下滑动触发顶部碰撞
      await tester.fling(find.byType(Scrollable), const Offset(0, 1000), 5000, warnIfMissed: false);
      await tester.pump(Duration(milliseconds: 500));
      
      expect(refreshed, true);
    });

    testWidgets('enableBallisticRefresh false should NOT trigger refresh on fling', (WidgetTester tester) async {
      final RefreshController controller = RefreshController();
      bool refreshed = false;
      
      await tester.pumpWidget(
        MaterialApp(
          home: RefreshConfiguration(
            enableBallisticRefresh: false,
            child: SmartRefresher(
              controller: controller,
              onRefresh: () => refreshed = true,
              child: ListView(children: [Container(height: 100, child: Text("Item"))]),
            ),
          ),
        ),
      );

      await tester.fling(find.byType(Scrollable), const Offset(0, 1000), 5000, warnIfMissed: false);
      await tester.pump(Duration(milliseconds: 500));
      
      expect(refreshed, false);
    });

    testWidgets('SliverRefreshBody layout with non-scrollable child', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SmartRefresher(
            controller: RefreshController(),
            child: const Text("Non Scrollable Content"),
          ),
        ),
      );

      // 验证是否正确生成了适配层
      expect(find.text("Non Scrollable Content"), findsOneWidget);
      // 由于 Text 不是 ScrollView，它应该被包裹在 SliverRefreshBody 中
      // 这个在 refresh_test.dart 中有提及，我们确保其在现代环境下依然能正确 performLayout
    });
  });
}
