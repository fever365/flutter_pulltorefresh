/*
 * @Author: Gemini CLI (based on flutter_scrollview_observer)
 * @Repo: https://github.com/lxlib/third/flutter_pulltorefresh
 * @Date: 2026-04-23
 */
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'refresh_observe_model.dart';
import '../smart_refresher.dart';

typedef OnRefreshObserveCallback = void Function(RefreshObserveModel model);

/// SmartRefreshObserver
/// 
/// 仿照 flutter_scrollview_observer 设计的非侵入式刷新观察者。
class SmartRefreshObserver extends StatefulWidget {
  final Widget child;

  /// 观察结果回调
  final OnRefreshObserveCallback? onObserve;

  /// 绑定的控制器
  final RefreshController? controller;

  const SmartRefreshObserver({
    Key? key,
    required this.child,
    this.onObserve,
    this.controller,
  }) : super(key: key);

  @override
  State<SmartRefreshObserver> createState() => SmartRefreshObserverState();

  static SmartRefreshObserverState? maybeOf(BuildContext context) {
    return context.findAncestorStateOfType<SmartRefreshObserverState>();
  }
}

class SmartRefreshObserverState extends State<SmartRefreshObserver> {
  
  @override
  void initState() {
    super.initState();
    // 建立与控制器的双向绑定，用于位置保持逻辑
    widget.controller?.setObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    // 即使没有滚动通知，也在每一帧结束后尝试更新模型（如果控制器有需要）
    // 这对于处理 keepPosition 这种非滚动触发的位移修正至关重要
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final position = widget.controller?.position;
      if (position != null) {
        handleObserve(position);
      }
    });

    return NotificationListener<ScrollNotification>(
      onNotification: _handleScrollNotification,
      child: widget.child,
    );
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification.depth != 0) return false;

    // 每一帧滚动都更新模型
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      handleObserve(notification.metrics);
    });

    return false;
  }

  /// 执行观察并生成结构化模型
  RefreshObserveModel? handleObserve(ScrollMetrics metrics) {
    final List<RenderSliverMultiBoxAdaptor> slivers = [];
    RenderViewportBase? viewport;

    void visitor(Element element) {
      final renderObject = element.renderObject;
      if (renderObject is RenderViewportBase) {
        viewport = renderObject;
      }
      if (renderObject is RenderSliverMultiBoxAdaptor) {
        slivers.add(renderObject);
      }
      element.visitChildren(visitor);
    }

    context.visitChildElements(visitor);
    if (slivers.isEmpty || viewport == null) return null;

    final List<RefreshObserveChildModel> childModels = [];
    final axis = viewport!.axis;

    for (final sliver in slivers) {
      RenderBox? child = sliver.firstChild;
      while (child != null) {
        final parentData = child.parentData;
        if (parentData is SliverMultiBoxAdaptorParentData) {
          final index = parentData.index ?? -1;
          if (index >= 0) {
            // 计算子项相对于视口的 leading margin
            double leadingMargin = 0;
            try {
              // 更加通用的计算方式
              final offsetToViewport = child.localToGlobal(Offset.zero, ancestor: viewport);
              leadingMargin = axis == Axis.vertical ? offsetToViewport.dy : offsetToViewport.dx;
            } catch (_) {}

            childModels.add(RefreshObserveChildModel(
              index: index,
              renderObject: child,
              leadingMarginToViewport: leadingMargin,
              trailingMarginToViewport: metrics.viewportDimension - (leadingMargin + (axis == Axis.vertical ? child.size.height : child.size.width)),
              mainAxisSize: axis == Axis.vertical ? child.size.height : child.size.width,
            ));
          }
        }
        child = sliver.childAfter(child);
      }
    }

    final model = RefreshObserveModel(
      slivers: slivers,
      viewport: viewport,
      pixels: metrics.pixels,
      maxScrollExtent: metrics.maxScrollExtent,
      viewportExtent: metrics.viewportDimension,
      displayingChildModelList: childModels,
      overscroll: metrics.pixels < 0 ? -metrics.pixels : (metrics.pixels > metrics.maxScrollExtent ? metrics.pixels - metrics.maxScrollExtent : 0),
    );

    widget.onObserve?.call(model);
    widget.controller?.updateObserveModel(model); 

    return model;
  }

  /// 核心：位置保持修正逻辑
  /// 当顶部插入数据后，调用此方法来抵消位移
  void applyPositionAdjustment(double offsetDelta) {
    if (offsetDelta == 0) return;
    final position = widget.controller?.position;
    if (position != null) {
      // 这里的 jumpTo 是为了瞬间抵消，用户感觉不到跳动
      position.jumpTo(position.pixels + offsetDelta);
    }
  }
}
