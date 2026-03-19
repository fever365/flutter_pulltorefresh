import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:pull_to_refresh/src/internals/refresh_physics.dart';

void main() {
  testWidgets('RefreshPhysics hitBoundary test', (WidgetTester tester) async {
    final RefreshController controller = RefreshController();
    
    // 设置一个 50.0 的顶部碰撞边界
    // 这意味着当惯性滑动到 -50.0 时应该被强制拦截
    await tester.pumpWidget(
      MaterialApp(
        home: RefreshConfiguration(
          topHitBoundary: 50.0,
          maxOverScrollExtent: 100.0,
          child: SmartRefresher(
            controller: controller,
            child: ListView.builder(
              itemBuilder: (c, i) => Container(height: 100, child: Text("Item $i")),
              itemCount: 20,
            ),
          ),
        ),
      ),
    );

    // 模拟一个极其猛烈的向上抛投（Fling），产生很大的负向像素（越过顶部）
    await tester.fling(find.byType(Scrollable), const Offset(0, 2000), 10000, warnIfMissed: false);
    
    double minPixels = 0.0;
    // 在动画过程中记录最小值
    for(int i=0; i<20; i++) {
      await tester.pump(const Duration(milliseconds: 20));
      if (controller.position!.pixels < minPixels) {
        minPixels = controller.position!.pixels;
      }
    }

    // 如果 topHitBoundary 生效，pixels 不应该显著超过 -50.0 (考虑到一点点 tolerance)
    // 注意：原本代码逻辑是 value < -topHitBoundary => return value + topHitBoundary
    expect(minPixels, greaterThanOrEqualTo(-51.0));
  });
}
