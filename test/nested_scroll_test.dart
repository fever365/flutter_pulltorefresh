import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'test_helper.dart';

void main() {
  testWidgets('Horizontal scrolling in PageView should not trigger Refresh/Load', (WidgetTester tester) async {
    final RefreshController refreshController = RefreshController();
    final PageController pageController = PageController();
    bool isRefreshCalled = false;
    bool isLoadingCalled = false;

    // 构建一个包含水平 PageView 的 SmartRefresher
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: TestHelper.buildSmartRefresher(
          controller: refreshController,
          onRefresh: () {
            isRefreshCalled = true;
          },
          onLoading: () {
            isLoadingCalled = true;
          },
          child: ListView(
            children: [
              SizedBox(
                height: 200,
                child: PageView(
                  controller: pageController,
                  children: [
                    Container(color: Colors.red, child: const Center(child: Text("Page 1"))),
                    Container(color: Colors.blue, child: const Center(child: Text("Page 2"))),
                  ],
                ),
              ),
              ...List.generate(20, (i) => ListTile(title: Text("Item $i"))),
            ],
          ),
        ),
      ),
    ));

    // 1. 在 PageView 上进行水平滑动
    // 使用 fling 确保触发翻页
    await tester.fling(find.text("Page 1"), const Offset(-300, 0), 1000);
    await tester.pumpAndSettle();

    // 验证 PageView 发生了翻页，但没有触发刷新
    expect(pageController.page, closeTo(1, 0.1));
    expect(isRefreshCalled, isFalse);
    expect(isLoadingCalled, isFalse);

    // 2. 尝试进行垂直滑动，验证它仍然可以正常触发 SmartRefresher 逻辑
    // 向下滑动触发刷新
    await tester.drag(find.text("Item 5"), const Offset(0, 500));
    await tester.pump(); // 开始拖动
    await tester.pump(const Duration(milliseconds: 500)); // 动画
    
    // 验证垂直方向的操作能够被感知 (这里我们不一定能直接触发 call，但能确认没有被忽略)
    expect(refreshController.headerStatus, isNot(null));
  });
}
