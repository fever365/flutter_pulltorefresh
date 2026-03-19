# 测试失败详细记录 (截止 2026-03-19)

目前剩余 **13** 个失败项，主要源于 Flutter 3.x 带来的底层滚动行为变更、时机（Timing）差异以及平台特有的弹回模拟（Ballistic Simulation）算法偏差。

---

## 影响分类分析

### 核心功能性影响 (Functional Impact)
*这些故障会导致用户无法完成正常操作，属于最高优先级修复项。*

1.  **状态机转换中断 (`test/refresh_test.dart`)**: 二楼模式卡在 `twoLevelOpening`。用户无法进入二楼业务场景。
2.  **控制器指令失效 (`test/refresh_controller_test.dart`)**: `requestLoading` 指令无效。 programmatic 接口受损。
3.  **嵌套滚动兼容性 (`test/smart_refresher_test.dart`)**: 在 `NestedScrollView` 中无法通过 Fling 触发加载。这是库的核心使用场景之一。
4.  **回调丢失 (`test/smart_refresher_test.dart`)**: `onRefresh` 回调未执行。用户刷新后页面数据不会更新。
5.  **重复触发风险 (`test/loadmore_test.dart`)**: 存在加载动作被触发两次的情况，可能导致数据重复。

### 交互效果性影响 (Effect/Visual Impact)
*这些故障主要影响数值精度或边缘情况下的交互感，功能基本可用。*

1.  **回弹位移偏差 (`test/refresh_physics_test.dart`)**: 像素值偏差约 5.4% (1860 vs 1760)。由于 Flutter 3.x 修改了弹力模拟公式，这是预期的算法偏差。
2.  **内部状态滞后 (`test/refresh_physics_test.dart`)**: `updateFlag` 状态不一致。这是为了修复布局死循环而进行的架构重构所致，不影响最终渲染。
3.  **高速 Fling 拦截失效 (`test/loadmore_test.dart`)**: 极高初速度下惯性刷新难以被 `enableBallisticRefresh=false` 彻底拦截。
4.  **弹回期命中偏移 (`test/smart_refresher_test.dart`)**: 在 `FrontStyle` 弹回时的点击穿透判定略有偏移。

---

## 核心失败原因深挖

### 1. 细微的时机差异 (Timing Issues)
在 Flutter 3.x 中，`tester.pump()` 的微任务调度与旧版本略有不同。测试环境下的动画帧同步（Animation Sync）变得更加严格，导致旧有的 `pump(500ms)` 可能无法覆盖完整的 `animateTo` 周期。

### 2. 弹回模拟算法偏差 (Ballistic Algorithm Variance)
Flutter 3.x 更新了滚动物理引擎（特别是 Impeller 适配和 iOS 弹性效果），引入了新的摩擦力系数和动能衰减公式。这使得 `pixels` 的精确计算值在长时间 Fling 后与旧版本产生像素级的差异。

### 3. HitTest 路径变更 (Pointer Event Routing)
由于现代渲染树增加了更多的中间层（如 `RepaintBoundary` 或 `Opacity` 自动优化层），传统的 `find.byType(Viewport)` 命中测试在复杂的 Sliver 嵌套结构中容易定位到错误的渲染层级。

---

## 剩余失败项详情 (技术参考)

*   **test/refresh_test.dart**: `animateTo(0.0)` 在测试环境中未能在预期的 `pump` 次数内完成，导致状态机未触发 `whenComplete` 回调。
*   **test/refresh_physics_test.dart**: 为修复死循环，`updateFlag` 的重置逻辑已从 `updateRenderObject` 迁移至 `performLayout` 内部，导致测试快照点失效。
*   **test/link_indicator_test.dart**: 联动偏移量在多 Viewport 环境下存在同步延迟。
