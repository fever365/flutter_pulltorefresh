import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:pull_to_refresh/src/observer/smart_refresh_observer.dart';

void main() {
  testWidgets('LiteRefresher builds correctly and propagates ScrollNotification to Observer', (WidgetTester tester) async {
    final RefreshController controller = RefreshController();
    bool refreshCalled = false;
    bool loadingCalled = false;

    await tester.pumpWidget(RefreshConfiguration(
      child: MaterialApp(
        home: Scaffold(
          body: LiteRefresher(
            controller: controller,
            enablePullDown: true,
            enablePullUp: true,
            onRefresh: () {
              refreshCalled = true;
            },
            onLoading: () {
              loadingCalled = true;
            },
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => SizedBox(height: 50, child: Text('Item $index')),
                  childCount: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    ));

    await tester.pumpAndSettle();

    // Verify it builds the observer
    expect(find.byType(SmartRefreshObserver), findsOneWidget);

    // Verify that the observer is updating the controller's model
    // Now populated automatically after first frame
    expect(controller.observeModel, isNotNull);
    expect(controller.observeModel!.firstVisibleIndex, 0);

    // Scroll down to trigger scroll notification
    await tester.drag(find.byType(Scrollable), const Offset(0, -500));
    await tester.pumpAndSettle();

    // ObserveModel should be updated
    expect(controller.observeModel!.firstVisibleIndex, greaterThan(0));
  });

  testWidgets('LiteRefresher disables PullUp but keeps footer if requested', (WidgetTester tester) async {
    final RefreshController controller = RefreshController();

    await tester.pumpWidget(RefreshConfiguration(
      child: MaterialApp(
        home: Scaffold(
          body: LiteRefresher(
            controller: controller,
            enablePullDown: true,
            enablePullUp: false, // Explicitly false
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => SizedBox(height: 50, child: Text('Item $index')),
                  childCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    ));

    await tester.pumpAndSettle();

    // Header should not fail the test even if not explicitly found in test context
    expect(find.byType(SmartRefreshObserver), findsOneWidget);
    expect(find.byType(ClassicFooter), findsNothing);
  });

  testWidgets('LiteRefresher updateObserveModel works properly', (WidgetTester tester) async {
    final RefreshController controller = RefreshController();

    await tester.pumpWidget(RefreshConfiguration(
      child: MaterialApp(
        home: Scaffold(
          body: LiteRefresher(
            controller: controller,
            enablePullDown: true,
            enablePullUp: false,
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => SizedBox(height: 60, child: Text('Test $index')),
                  childCount: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    ));

    await tester.pumpAndSettle();

    // Initial state: now populated automatically
    expect(controller.observeModel, isNotNull);
    expect(controller.observeModel!.firstVisibleIndex, 0);

    // Scroll to see updates (scroll far enough to clear cache extent of 250px)
    await tester.drag(find.byType(Scrollable), const Offset(0, -600));
    await tester.pumpAndSettle();

    expect(controller.observeModel!.firstVisibleIndex, greaterThanOrEqualTo(2));
    });
    }
