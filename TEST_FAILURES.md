# 测试失败详细记录

## test/final_coverage_test.dart
- **错误**: Expected: exactly one matching candidate. Actual: _TypeWidgetFinder:<Found 0 widgets with type "ClassicHeader": []>
- **位置**: test/final_coverage_test.dart:49:5
- **原因**: 预期找到一个 ClassicHeader，但实际没有找到。

## test/indicators_coverage_test.dart
- **错误1**: WaterDropHeader - Expected: RefreshStatus.refreshing. Actual: RefreshStatus.idle
- **位置**: test/indicators_coverage_test.dart:31:7
- **错误2**: MaterialClassicHeader - Expected: RefreshStatus.refreshing. Actual: RefreshStatus.idle
- **位置**: test/indicators_coverage_test.dart:60:7

## test/link_indicator_test.dart
- **错误**: Expected: a value greater than <0>. Actual: <0.0>
- **位置**: test/link_indicator_test.dart:114:5

## test/loadmore_test.dart
- **错误**: pumpAndSettle timed out
- **位置**: 多处 (118, 243, 281, 533)
- **原因**: 可能是因为动画未停止或状态机进入了无限循环。

## test/more_indicators_test.dart
- **错误**: Expected: exactly one matching candidate. Actual: _TextWidgetFinder:<Found 0 widgets with text "Let go!": []>
- **位置**: test/more_indicators_test.dart:43:7

## test/more_logic_test.dart
- **错误**: Expected: <true>. Actual: <false>
- **位置**: test/more_logic_test.dart:28:7
- **原因**: enableBallisticRefresh 为 true 时，fling 未触发刷新。

## test/physics_boundary_test.dart
- **错误**: Expected: a value greater than or equal to <-51.0>. Actual: <-180.0>
- **位置**: test/physics_boundary_test.dart:42:5

## test/refresh_controller_test.dart
- **错误**: pumpAndSettle timed out
- **位置**: test/refresh_controller_test.dart:49:5

## test/refresh_test.dart
- **错误1**: pumpAndSettle timed out (多处)
- **错误2**: Expected: RefreshStatus.refreshing. Actual: RefreshStatus.canRefresh
- **位置**: test/refresh_test.dart:225:7

## test/smart_refresher_test.dart
- **错误1**: param check - Expected: <1>. Actual: <0>
- **位置**: test/smart_refresher_test.dart:198:5
- **错误2**: pumpAndSettle timed out
