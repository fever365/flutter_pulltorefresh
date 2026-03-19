/*
    Author: Jpeng
    Email: peng8350@gmail.com
    createTime:2018-05-02 14:39
 */
// ignore_for_file: INVALID_USE_OF_PROTECTED_MEMBER
// ignore_for_file: INVALID_USE_OF_VISIBLE_FOR_TESTING_MEMBER
import 'package:flutter/physics.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';
import '../smart_refresher.dart';
import 'dart:math' as Math;
import 'slivers.dart';

/// scroll physics for refresh and loadmore
class RefreshPhysics extends ScrollPhysics {
  /// create refresh physics
  const RefreshPhysics({
    ScrollPhysics? parent,
    this.updateFlag,
    this.controller,
    this.springDescription,
    this.dragSpeedRatio,
    this.enableScrollWhenTwoLevel,
    this.enableScrollWhenRefreshCompleted,
    this.maxOverScrollExtent,
    this.maxUnderScrollExtent,
    this.topHitBoundary,
    this.bottomHitBoundary,
    this.enablePullDown = true,
    this.enablePullUp = false,
  }) : super(parent: parent);

  /// description of spring
  final SpringDescription? springDescription;

  /// controller of refresher
  final RefreshController? controller;

  /// ratio of drag speed
  final double? dragSpeedRatio;

  /// flag of update
  final int? updateFlag;

  /// whether can scroll when twolevel
  final bool? enableScrollWhenTwoLevel;

  /// whether can scroll when refresh complete
  final bool? enableScrollWhenRefreshCompleted;

  /// max distance of overscroll
  final double? maxOverScrollExtent;

  /// max distance of underscroll
  final double? maxUnderScrollExtent;

  /// top boundary of hit
  final double? topHitBoundary;

  /// bottom boundary of hit
  final double? bottomHitBoundary;

  final bool enablePullDown;
  final bool enablePullUp;

  @override
  RefreshPhysics applyTo(ScrollPhysics? ancestor) {
    return RefreshPhysics(
      parent: buildParent(ancestor),
      updateFlag: updateFlag,
      controller: controller,
      springDescription: springDescription,
      dragSpeedRatio: dragSpeedRatio,
      enableScrollWhenTwoLevel: enableScrollWhenTwoLevel,
      enableScrollWhenRefreshCompleted: enableScrollWhenRefreshCompleted,
      maxOverScrollExtent: maxOverScrollExtent,
      maxUnderScrollExtent: maxUnderScrollExtent,
      topHitBoundary: topHitBoundary,
      bottomHitBoundary: bottomHitBoundary,
      enablePullDown: enablePullDown,
      enablePullUp: enablePullUp,
    );
  }

  @override
  bool shouldAcceptUserOffset(ScrollMetrics position) {
    // TODO: implement shouldAcceptUserOffset
    if (controller!.headerMode!.value == RefreshStatus.twoLeveling) {
      return enableScrollWhenTwoLevel!;
    } else if (controller!.headerMode!.value == RefreshStatus.completed ||
        controller!.headerMode!.value == RefreshStatus.failed) {
      return enableScrollWhenRefreshCompleted!;
    }
    return true;
  }

  /*
    I found a big problem in findViewport, context.visitChildElements may cause "The widget tree is currently being built" error.
    This mostly happens when you call requestRefresh in initState.
    So I use findRenderObject to find viewport instead of context.visitChildElements.
   */
  RenderViewport? findViewport(BuildContext? context) {
    if (context == null) {
      return null;
    }
    RenderViewport? result;

    void visit(Element e) {
      final RenderObject? renderObject = e.renderObject;
      if (renderObject is RenderViewport) {
        result = renderObject;
      } else {
        e.visitChildren(visit);
      }
    }

    visit(context as Element);
    return result;
  }

  RenderSliverRefresh? _getSliverRefresh(RenderObject? render) {
    if (render == null) return null;
    if (render is RenderSliverRefresh) return render;
    RenderSliverRefresh? found;
    render.visitChildren((c) {
      found ??= _getSliverRefresh(c);
    });
    return found;
  }

  RenderSliverRefresh? findRefreshSliver(RenderViewport? viewport) {
    if (viewport == null) return null;
    RenderSliverRefresh? result;
    viewport.visitChildren((child) {
      result ??= _getSliverRefresh(child);
    });
    return result;
  }

  RenderSliverLoading? _getSliverLoading(RenderObject? render) {
    if (render == null) return null;
    if (render is RenderSliverLoading) return render;
    RenderSliverLoading? found;
    render.visitChildren((c) {
      found ??= _getSliverLoading(c);
    });
    return found;
  }

  RenderSliverLoading? findLoadingSliver(RenderViewport? viewport) {
    if (viewport == null) return null;
    RenderSliverLoading? result;
    viewport.visitChildren((child) {
      result ??= _getSliverLoading(child);
    });
    return result;
  }

  @override
  double applyPhysicsToUserOffset(ScrollMetrics position, double offset) {
    // TODO: implement applyPhysicsToUserOffset
    if (controller!.position == null || controller!.position!.context.storageContext == null) {
      return parent!.applyPhysicsToUserOffset(position, offset);
    }
    
    final RenderViewport? viewportRender =
        findViewport(controller!.position!.context.storageContext);
    final RenderSliverRefresh? refreshSliver = findRefreshSliver(viewportRender);
    final RenderSliverLoading? loadingSliver = findLoadingSliver(viewportRender);

    if (controller!.headerMode!.value == RefreshStatus.twoLeveling) {
      if (offset > 0.0) {
        return parent!.applyPhysicsToUserOffset(position, offset);
      }
    } else {
      if ((offset > 0.0 && (!enablePullDown || refreshSliver == null)) ||
          (offset < 0 && (!enablePullUp || loadingSliver == null))) {
        return parent!.applyPhysicsToUserOffset(position, offset);
      }
    }

    if (position.outOfRange ||
        controller!.headerMode!.value == RefreshStatus.twoLeveling) {
      final double overscrollPast = Math.max(
          position.minScrollExtent - position.pixels,
          position.pixels - position.maxScrollExtent);
      final double direction = offset.sign;
      // Set friction to 0.8 for better balance
      final double friction = 0.8;
      return direction *
          _applyFriction(overscrollPast, offset.abs(), friction) *
          (dragSpeedRatio ?? 1.0);
    }
    return parent!.applyPhysicsToUserOffset(position, offset);
  }

  double _applyFriction(
      double extentExtent, double offset, double friction) {
    return offset * friction;
  }

  @override
  double applyBoundaryConditions(ScrollMetrics position, double value) {
    if (controller!.position == null || controller!.position!.context.storageContext == null) {
      return super.applyBoundaryConditions(position, value);
    }
    final RenderViewport? viewportRender =
        findViewport(controller!.position!.context.storageContext);
    
    final RenderSliverRefresh? refreshSliver = findRefreshSliver(viewportRender);
    final double topExtra = refreshSliver?.geometry?.paintExtent ?? 0.0;
    
    final RenderSliverLoading? loadingSliver = findLoadingSliver(viewportRender);
    final double bottomExtra = loadingSliver?.geometry?.paintExtent ?? 0.0;

    final ScrollPosition scrollPosition = position as ScrollPosition;
    // check user is dragging,it is import,some devices may not bounce with different frame and time,bouncing return the different velocity
    if (scrollPosition.activity is DragScrollActivity) {
      if (maxOverScrollExtent != double.infinity &&
          value < position.pixels &&
          position.pixels <=
              position.minScrollExtent - maxOverScrollExtent! - topExtra) // underscroll
        return value - position.pixels;
      if (maxUnderScrollExtent != double.infinity &&
          value > position.pixels &&
          position.pixels >=
              position.maxScrollExtent +
                  maxUnderScrollExtent! +
                  bottomExtra) // overscroll
        return value - position.pixels;
    }

    if (maxOverScrollExtent != double.infinity &&
        value < position.minScrollExtent - maxOverScrollExtent! - topExtra &&
        position.minScrollExtent - maxOverScrollExtent! - topExtra <
            position.pixels) // hit top edge
      return value -
          (position.minScrollExtent - maxOverScrollExtent! - topExtra);

    if (maxUnderScrollExtent != double.infinity &&
        value > position.maxScrollExtent + maxUnderScrollExtent! + bottomExtra &&
        position.pixels <
            position.maxScrollExtent +
                maxUnderScrollExtent! +
                bottomExtra) // hit bottom edge
      return value -
          (position.maxScrollExtent + maxUnderScrollExtent! + bottomExtra);

    if (!enablePullDown && value < position.minScrollExtent && position.minScrollExtent < position.pixels) // hit top edge
      return value - position.minScrollExtent;
    if (!enablePullUp &&
        value > position.maxScrollExtent &&
        position.pixels < position.maxScrollExtent) // hit bottom edge
      return value - position.maxScrollExtent;
    return super.applyBoundaryConditions(position, value);
  }

  @override
  Simulation? createBallisticSimulation(
      ScrollMetrics position, double velocity) {
    if ((position.pixels > 0 &&
            controller!.headerMode!.value == RefreshStatus.twoLeveling) ||
        position.outOfRange) {
      return BouncingScrollSimulation(
        spring: springDescription ??
            const SpringDescription(
              mass: 2.2,
              stiffness: 150,
              damping: 16,
            ),
        position: position.pixels,
        velocity: velocity * 0.91,
        leadingExtent: position.minScrollExtent,
        trailingExtent: controller!.headerMode!.value == RefreshStatus.twoLeveling
                ? 0.0
                : position.maxScrollExtent,
        tolerance: tolerance,
      );
    }
    return super.createBallisticSimulation(position, velocity);
  }
}
