import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:pull_to_refresh/src/observer/smart_refresh_observer.dart';
import 'package:pull_to_refresh/src/observer/refresh_observe_model.dart';

void main() {
  testWidgets('SmartRefreshObserver correctly identifies visible items',
      (WidgetTester tester) async {
    final RefreshController controller = RefreshController();
    RefreshObserveModel? lastModel;

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: SmartRefreshObserver(
          controller: controller,
          onObserve: (model) {
            lastModel = model;
          },
          child: SmartRefresher(
            controller: controller,
            enablePullDown: true,
            enablePullUp: true,
            child: ListView.builder(
              itemExtent: 50.0,
              itemCount: 100,
              itemBuilder: (context, index) => Container(
                height: 50.0,
                child: Text('Item $index'),
              ),
            ),
          ),
        ),
      ),
    ));

    await tester.pumpAndSettle();

    // Initial state: lastModel is now populated automatically on the first frame
    expect(lastModel, isNotNull);
    expect(lastModel!.firstVisibleIndex, 0);

    // Scroll down by 500 pixels (more than default 250px cache extent)
    await tester.drag(find.byType(Scrollable), const Offset(0, -500.0));
    await tester.pumpAndSettle();

    // After scrolling significantly, the 0th item is pushed out of the cache
    expect(lastModel, isNotNull);
    expect(lastModel!.firstVisibleIndex, greaterThan(0));
    expect(lastModel!.pixels, greaterThanOrEqualTo(500.0));

    // Scroll further
    await tester.drag(find.byType(Scrollable), const Offset(0, -500.0));
    await tester.pumpAndSettle();

    expect(lastModel!.firstVisibleIndex, greaterThanOrEqualTo(5));
    expect(lastModel!.pixels, greaterThanOrEqualTo(1000.0));
  });
}
