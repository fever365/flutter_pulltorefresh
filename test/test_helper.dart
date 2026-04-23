import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'test_indicator.dart';

/// 借鉴自 scrollview_observer 的测试辅助类
/// 提供了参数化的 Widget 构建函数，用于减少测试用例中的冗余代码。
class TestHelper {
  /// 记录滚动通知次数的容器
  static int scrollNotificationCount = 0;

  /// 重置计数器
  static void resetScrollNotificationCount() {
    scrollNotificationCount = 0;
  }

  /// 构建带有通知监听的 SmartRefresher 包装器
  static Widget buildWithNotificationListener({
    required Widget child,
  }) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollUpdateNotification) {
          scrollNotificationCount++;
        }
        return false;
      },
      child: child,
    );
  }

  /// 构建一个通用的 SmartRefresher 包装的滚动列表
  static Widget buildSmartRefresher({
    required RefreshController controller,
    Widget? child,
    bool enablePullDown = true,
    bool enablePullUp = true,
    RefreshConfiguration? configuration,
    VoidCallback? onRefresh,
    VoidCallback? onLoading,
  }) {
    final Widget refresher = SmartRefresher(
      controller: controller,
      enablePullDown: enablePullDown,
      enablePullUp: enablePullUp,
      header: const TestHeader(),
      footer: const TestFooter(),
      onRefresh: onRefresh,
      onLoading: onLoading,
      child: child,
    );

    return Directionality(
      textDirection: TextDirection.ltr,
      child: configuration != null
          ? Builder(
              builder: (context) => RefreshConfiguration.copyAncestor(
                context: context,
                child: refresher,
              ),
            )
          : refresher,
    );
  }

  /// 构建带有 SmartRefresher 的 ListView
  static Widget buildListView({
    required RefreshController controller,
    int itemCount = 20,
    bool isFixedHeight = true,
    ScrollPhysics? physics,
    ScrollController? scrollController,
    double? cacheExtent,
    bool enablePullDown = true,
    bool enablePullUp = true,
  }) {
    final Widget listView = ListView.builder(
      physics: physics,
      controller: scrollController,
      cacheExtent: cacheExtent,
      itemBuilder: (context, index) {
        final double height = isFixedHeight ? 100.0 : (index % 2 == 0 ? 80.0 : 50.0);
        return SizedBox(
          height: height,
          child: Center(child: Text("Item $index")),
        );
      },
      itemCount: itemCount,
    );

    return buildSmartRefresher(
      controller: controller,
      enablePullDown: enablePullDown,
      enablePullUp: enablePullUp,
      child: listView,
    );
  }

  /// 构建带有 SmartRefresher 的 GridView
  static Widget buildGridView({
    required RefreshController controller,
    int itemCount = 40,
    int crossAxisCount = 2,
    ScrollPhysics? physics,
    ScrollController? scrollController,
    bool enablePullDown = true,
    bool enablePullUp = true,
  }) {
    final Widget gridView = GridView.builder(
      physics: physics,
      controller: scrollController,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.blue[100],
          child: Center(child: Text("Item $index")),
        );
      },
      itemCount: itemCount,
    );

    return buildSmartRefresher(
      controller: controller,
      enablePullDown: enablePullDown,
      enablePullUp: enablePullUp,
      child: gridView,
    );
  }
}
