import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

void main() {
  testWidgets('RefreshController.keepPosition maintains visual scroll position after item insertion (Fixed Height)', (WidgetTester tester) async {
    final RefreshController refreshController = RefreshController();
    final List<String> items = List.generate(50, (i) => 'Item $i');
    const double itemHeight = 100.0;

    late StateSetter refreshState;

    await tester.pumpWidget(RefreshConfiguration(
      child: MaterialApp(
        home: Scaffold(
          body: StatefulBuilder(
            builder: (context, setState) {
              refreshState = setState;
              return LiteRefresher(
                controller: refreshController,
                enablePullDown: true,
                enablePullUp: false,
                slivers: [
                  SliverFixedExtentList(
                    itemExtent: itemHeight,
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => SizedBox(
                        height: itemHeight,
                        child: Center(child: Text(items[index])),
                      ),
                      childCount: items.length,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    ));

    await tester.pumpAndSettle();

    // 1. Scroll to Item 10 (offset 1000)
    await tester.drag(find.byType(Scrollable), const Offset(0, -1000.0));
    await tester.pumpAndSettle();

    // Verify Item 10 is visible
    expect(find.text('Item 10'), findsOneWidget);
    final double initialTop = tester.getRect(find.text('Item 10')).top;

    // 2. Prepare for insertion
    const int delta = 2;
    refreshController.keepPosition(itemCountDelta: delta);

    // 3. Update data (Insert at top)
    for (int i = 0; i < delta; i++) {
      items.insert(0, 'New Item $i');
    }

    // 4. Rebuild
    refreshState(() {});
    await tester.pump(); 
    await tester.pump(); 

    // 5. Verify that 'Item 10' is still at the same visual position
    expect(find.text('Item 10'), findsOneWidget);
    final double finalTop = tester.getRect(find.text('Item 10')).top;
    
    expect(finalTop, closeTo(initialTop, 1.0));
    
    // The actual scroll pixels should have increased by delta * itemHeight (2 * 100 = 200)
    expect(refreshController.position!.pixels, closeTo(1000.0 + (delta * itemHeight), 1.0));
  });

  testWidgets('RefreshController.keepPosition maintains visual scroll position after item insertion (Dynamic Height)', (WidgetTester tester) async {
    final RefreshController refreshController = RefreshController();
    final List<String> items = List.generate(50, (i) => 'Item $i');
    
    // 设定变高逻辑: 偶数 80, 奇数 50
    double getItemHeight(int index) => (index % 2 == 0) ? 80.0 : 50.0;

    late StateSetter refreshState;

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: StatefulBuilder(
          builder: (context, setState) {
            refreshState = setState;
            return LiteRefresher(
              controller: refreshController,
              enablePullDown: true,
              enablePullUp: false,
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => SizedBox(
                      height: getItemHeight(index),
                      child: Center(child: Text(items[index])),
                    ),
                    childCount: items.length,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    ));

    await tester.pumpAndSettle();

    // 1. 滚动到 Item 10
    // 偏移量计算: 5个80 + 5个50 = 400 + 250 = 650
    await tester.drag(find.byType(Scrollable), const Offset(0, -650.0));
    await tester.pumpAndSettle();

    expect(find.text('Item 10'), findsOneWidget);
    final double initialTop = tester.getRect(find.text('Item 10')).top;

    // 2. 准备插入 2 个变高 Item
    const int delta = 2;
    refreshController.keepPosition(itemCountDelta: delta);

    // 3. 插入数据
    items.insert(0, 'New Item A');
    items.insert(0, 'New Item B');
    
    // 4. 重建
    refreshState(() {});
    await tester.pump(); 
    await tester.pump(); 

    // 5. 验证 Item 10 视觉位置保持不变
    expect(find.text('Item 10'), findsOneWidget);
    final double finalTop = tester.getRect(find.text('Item 10')).top;
    
    expect(finalTop, closeTo(initialTop, 1.0));
  });
}
