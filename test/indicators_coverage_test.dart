import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

void main() {
  group('Indicators Coverage Tests', () {
    setUp(() {
      final TestWidgetsFlutterBinding binding = TestWidgetsFlutterBinding.ensureInitialized();
      binding.window.physicalSizeTestValue = const Size(1200, 800);
      binding.window.devicePixelRatioTestValue = 1.0;
    });

    tearDown(() {
      final TestWidgetsFlutterBinding binding = TestWidgetsFlutterBinding.ensureInitialized();
      binding.window.clearPhysicalSizeTestValue();
      binding.window.clearDevicePixelRatioTestValue();
    });

    testWidgets('WaterDropHeader should render and respond to offset', (WidgetTester tester) async {
      final RefreshController controller = RefreshController();
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(size: Size(1200, 800)),
            child: SmartRefresher(
              controller: controller,
              header: const WaterDropHeader(),
              child: ListView(
                children: const [Text('Item 1'), Text('Item 2')],
              ),
            ),
          ),
        ),
      );

      // 1. 触发下拉
      await tester.drag(find.byType(Scrollable), const Offset(0, 200), warnIfMissed: false);
      await tester.pump();
      expect(find.byType(WaterDropHeader, skipOffstage: false), findsOneWidget);
      
      // 2. 释放并等待回到 idle
      await tester.pump(const Duration(seconds: 1));

      // 3. 测试通过 controller 触发刷新
      controller.requestRefresh();
      await tester.pump(); 
      await tester.pump(const Duration(milliseconds: 100)); 
      await tester.pump(const Duration(seconds: 1)); 
      
      expect(controller.headerStatus, RefreshStatus.refreshing);
      
      controller.refreshCompleted();
      await tester.pump();
      await tester.pump(const Duration(seconds: 1));
    });

    testWidgets('MaterialClassicHeader should render and respond to offset', (WidgetTester tester) async {
      final RefreshController controller = RefreshController();
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(size: Size(1200, 800)),
            child: SmartRefresher(
              controller: controller,
              header: const MaterialClassicHeader(),
              child: ListView(
                children: const [Text('Item 1')],
              ),
            ),
          ),
        ),
      );

      await tester.drag(find.byType(Scrollable), const Offset(0, 200), warnIfMissed: false);
      await tester.pump();
      expect(find.byType(MaterialClassicHeader, skipOffstage: false), findsOneWidget);
      
      await tester.pump(const Duration(seconds: 1));

      controller.requestRefresh();
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 100));
      await tester.pump(const Duration(seconds: 1));
      expect(controller.headerStatus, RefreshStatus.refreshing);
    });

    testWidgets('BezierHeader should render', (WidgetTester tester) async {
      final RefreshController controller = RefreshController();
      await tester.pumpWidget(
        MaterialApp(
          home: SmartRefresher(
            controller: controller,
            header: BezierHeader(
              child: const Text('Bezier Content'),
            ),
            child: ListView(
              children: const [Text('Item 1')],
            ),
          ),
        ),
      );

      await tester.drag(find.byType(Scrollable), const Offset(0, 200), warnIfMissed: false);
      await tester.pump();
      expect(find.text('Bezier Content', skipOffstage: false), findsOneWidget);
    });
   group("Indicators basic functions", () {
    testWidgets("LinkFooter should proxy state correctly", (WidgetTester tester) async {
      final RefreshController controller = RefreshController();
      await tester.pumpWidget(
        MaterialApp(
          home: SmartRefresher(
            controller: controller,
            enablePullUp: true,
            footer: CustomFooter(
              builder: (context, mode) => Text("Status: ${mode?.name}"),
            ),
            child: ListView(children: [Container(height: 1000)]),
          ),
        ),
      );

      controller.footerMode!.value = LoadStatus.loading;
      await tester.pump();
      expect(find.text("Status: loading"), findsOneWidget);
    });
  });
  });
}
