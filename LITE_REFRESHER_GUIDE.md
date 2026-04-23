# LiteRefresher 及 SmartRefreshObserver 使用指南

随着 Flutter 在长列表和复杂瀑布流页面中的广泛应用，经典的 `SmartRefresher` 虽然兼容性强大，但在处理几千上万条数据的极端懒加载时，其内部的自动推断包装和物理引擎判定会带来一些性能损耗。

为了满足**极限性能**、**更短的 Widget 层级**以及对**滚动可见索引的绝对把控**的需求，我们在 `flutter_pulltorefresh` 中引入了 `LiteRefresher` 和 `SmartRefreshObserver`。

---

## 核心新特性概览

1. **`SmartRefreshObserver` (智能刷新观察者)**
   - **非侵入式**：不改变你的 Widget 树结构，利用 `NotificationListener` 监听滚动，并通过遍历 RenderObject 树，极其轻量地计算出当前屏幕上**第一个可见元素的索引**和**最后一个可见元素的索引**。
   - **模型化数据**：对外输出 `RefreshObserveModel`，让你随时随地可以通过 `RefreshController.observeModel` 获取滚动的偏移量、视口高度和索引状态。

2. **`LiteRefresher` (轻量级刷新器)**
   - **放弃推断，直接给 Slivers**：放弃了以往为了兼容传入单个 `ListView` 而写的各种包装逻辑，强制要求你传入 `List<Widget> slivers`。它内部直接构建最纯净的 `CustomScrollView`，彻底消除了“多套一层容器”的渲染损耗。
   - **自带 Observer 支持**：它内部默认集成了 `SmartRefreshObserver`，并将数据持续同步给你的 `RefreshController`。
   - **底层物理依然原汁原味**：在解决了层级臃肿的问题后，`LiteRefresher` 依然保留了 `SmartRefresher` 那套饱经考验的底部阻尼、下拉回弹的底层 `RefreshPhysics`，没有牺牲任何原版稳定性。
   - **局部刷新指示器**：在指示器层级(`IndicatorStateMixin`)引入了 `offsetNotifier`，指示器的拉伸和回弹动画现在基于 ValueNotifier 局部重绘，告别全界面的 `setState`。

---

## 使用场景指南

### 场景一：极限性能的长列表（信息流/瀑布流）
**推荐使用：`LiteRefresher` 配合 `SliverChildBuilderDelegate`**

如果您在做抖音的评论区、淘宝的商品信息流等可能存在上千条数据的长列表，**千万不要使用包含所有子 Widget 的 `ListBody`**，这会瞬间吃光内存。

请像下面这样使用 `LiteRefresher`，以获得极致的帧率和垃圾回收（GC）：

```dart
LiteRefresher(
  controller: _refreshController,
  enablePullDown: true,
  enablePullUp: true,
  onRefresh: _onRefresh,
  onLoading: _onLoading,
  // 强制直接提供 Slivers 数组
  slivers: [
    // 你的顶部 Banner 或搜索框
    SliverToBoxAdapter(child: MyBanner()),
    
    // 【核心】使用 Builder 进行真正的懒加载，滑出屏幕的 Widget 会被自动销毁！
    SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => MyCard(data: _dataList[index]),
        childCount: _dataList.length,
      ),
    ),
  ],
)
```

### 场景二：想要根据“当前屏幕滚到哪了”做业务逻辑（如视频自动播放）
**推荐使用：`RefreshController.observeModel`**

无论你是使用 `SmartRefresher` 还是 `LiteRefresher`，现在只要发生了滚动，`RefreshController` 就会静默记录下当前的屏幕情况。

```dart
// 比如你想知道用户现在正在看第几个卡片：
int currentFirst = _refreshController.observeModel?.firstVisibleIndex ?? 0;

// 想知道是不是快滑到底部了？
double currentOffset = _refreshController.observeModel?.pixels ?? 0.0;
double maxOffset = _refreshController.observeModel?.maxScrollExtent ?? 0.0;
if (maxOffset - currentOffset < 300) {
  print('用户距离底部不到 300 像素了！');
}
```

### 场景三：已经使用了 `CustomScrollView`，且不想换掉外层滚动组件
**推荐单独使用：`SmartRefreshObserver`**

如果你现有的页面结构极其复杂（比如用着其他的嵌套滚动库），不想直接使用 `SmartRefresher` 包装整个列表，但又极其想获得 `observeModel` 的结构化反馈，你可以直接使用 `SmartRefreshObserver` 包裹：

```dart
SmartRefreshObserver(
  controller: _refreshController,
  onObserve: (RefreshObserveModel model) {
     // 在这里可以自由编写无感预加载、曝光打点、自动播放的逻辑
     print('第一个可见元素：${model.firstVisibleIndex}');
     print('最后一个可见元素：${model.lastVisibleIndex}');
  },
  child: 你的巨型CustomScrollView(),
)
```

---

## 关于模板使用 (`listview_lite.dart`)
在您的业务代码库 `lxlib_flutter_common` 中，我们同步升级并新增了模板：
- **`newRfreshListScreen`**（经典升级）：现在也支持传入 `itemBuilder` 了！旧代码依然兼容，新代码传入 `itemBuilder` 将自动享用懒加载优化。
- **`newLiteRefreshListScreen`**（纯净版）：剥离了一切不必要的外壳，强制要求 `itemBuilder`，如果您的页面属于重度信息流卡片堆叠，请优先选用该模板，滑动性能将得到前所未有的保障！
