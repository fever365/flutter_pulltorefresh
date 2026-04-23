/*
 * @Author: Gemini CLI (based on flutter_scrollview_observer)
 * @Repo: https://github.com/lxlib/third/flutter_pulltorefresh
 * @Date: 2026-04-23
 */
import 'package:flutter/rendering.dart';

/// 单个子项的观察模型
class RefreshObserveChildModel {
  /// 元素索引
  final int index;

  /// 对应的 RenderObject
  final RenderBox renderObject;

  /// 距离视口顶部的距离 (或左侧，取决于滚动方向)
  final double leadingMarginToViewport;

  /// 距离视口底部的距离
  final double trailingMarginToViewport;

  /// 子项在主轴上的大小
  final double mainAxisSize;

  RefreshObserveChildModel({
    required this.index,
    required this.renderObject,
    required this.leadingMarginToViewport,
    required this.trailingMarginToViewport,
    required this.mainAxisSize,
  });
}

/// 刷新观察结果模型
class RefreshObserveModel {
  /// 目标滚动的 RenderSliver 列表
  final List<RenderSliverMultiBoxAdaptor> slivers;

  /// 当前视口对象
  final RenderViewportBase? viewport;

  /// 当前滚动的偏移量
  final double pixels;

  /// 最大可滚动范围
  final double maxScrollExtent;

  /// 视口主轴长度
  final double viewportExtent;

  /// 所有当前可见子项的详细模型
  final List<RefreshObserveChildModel> displayingChildModelList;

  /// 首个可见元素的索引
  int get firstVisibleIndex =>
      displayingChildModelList.isEmpty ? -1 : displayingChildModelList.first.index;

  /// 最后一个可见元素的索引
  int get lastVisibleIndex =>
      displayingChildModelList.isEmpty ? -1 : displayingChildModelList.last.index;

  /// 越界偏移量
  final double overscroll;

  RefreshObserveModel({
    required this.slivers,
    this.viewport,
    required this.pixels,
    required this.maxScrollExtent,
    required this.viewportExtent,
    required this.displayingChildModelList,
    this.overscroll = 0.0,
  });

  /// 获取指定索引的子项模型
  RefreshObserveChildModel? findChildModel(int index) {
    try {
      return displayingChildModelList.firstWhere((m) => m.index == index);
    } catch (_) {
      return null;
    }
  }

  @override
  String toString() {
    return 'RefreshObserveModel(first: $firstVisibleIndex, last: $lastVisibleIndex, pixels: $pixels)';
  }
}
