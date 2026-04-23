import 'package:flutter/widgets.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:pull_to_refresh/src/observer/smart_refresh_observer.dart';

/// 轻量级的下拉刷新和无感上拉加载组件
///
/// 结合 [SmartRefreshObserver] 实现了高性能的纯 Sliver 组合加载，
/// 移除了 [SmartRefresher] 中对子组件的复杂包装和底部的物理回弹运算。
/// 适合配合 [CustomScrollView] 和懒加载 Delegate 使用。
class LiteRefresher extends StatelessWidget {
  final RefreshController controller;
  final VoidCallback? onRefresh;
  final VoidCallback? onLoading;
  final bool enablePullDown;
  final bool enablePullUp;
  final Widget? header;
  final Widget? footer;

  /// 直接传入 slivers，不再需要包装在 ScrollView 中
  final List<Widget> slivers;

  final ScrollController? scrollController;
  final Axis scrollDirection;
  final ScrollPhysics? physics;
  final bool reverse;

  const LiteRefresher({
    Key? key,
    required this.controller,
    required this.slivers,
    this.onRefresh,
    this.onLoading,
    this.enablePullDown = true,
    this.enablePullUp = false,
    this.header,
    this.footer,
    this.scrollController,
    this.scrollDirection = Axis.vertical,
    this.physics,
    this.reverse = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmartRefreshObserver(
      controller: controller,
      onObserve: (model) {
        // 仅作状态同步和模型观测，不再在这里进行脆弱的“拦截式预加载”判定。
        // 将加载逻辑交还给饱经测试的 SmartRefresher 底层引擎，确保稳定无 Bug。
        controller.updateObserveModel(model);
      },
      child: SmartRefresher.builder(
        controller: controller,
        enablePullDown: enablePullDown,
        // 【回调原生方案】：恢复使用原生引擎的物理判断。
        // 因为底层的 RefreshPhysics 经过了数年的真实场景打磨，能完美处理回弹、负边界、数据不满一屏等极其复杂的滚动情况。
        enablePullUp: enablePullUp,
        onRefresh: onRefresh,
        onLoading: onLoading,
        builder: (context, refreshPhysics) {
          final list = <Widget>[];

          if (enablePullDown) {
            list.add(header ?? const ClassicHeader());
          }

          list.addAll(slivers);

          if (enablePullUp) {
            list.add(footer ?? const ClassicFooter());
          }

          return CustomScrollView(
            controller: scrollController,
            scrollDirection: scrollDirection,
            physics: physics ?? refreshPhysics,
            reverse: reverse,
            slivers: list,
          );
        },
      ),
    );
  }
}
