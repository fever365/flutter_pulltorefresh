# 测试修复进度 (2026-03-19)

| 测试文件 | 状态 | 备注 |
| :--- | :--- | :--- |
| test/dataSource.dart | 跳过 | 辅助文件 |
| test/final_coverage_test.dart | 失败 | ClassicHeader 查找失败 |
| test/indicators_coverage_test.dart | 失败 | WaterDrop/Material 状态未切换 |
| test/link_indicator_test.dart | 失败 | 偏移量为0 |
| test/loadmore_test.dart | 失败 | pumpAndSettle 超时 |
| test/localizations_test.dart | 通过 | |
| test/more_indicators_test.dart | 失败 | 文本 "Let go!" 未找到 |
| test/more_logic_test.dart | 失败 | fling 未触发刷新 |
| test/physics_boundary_test.dart | 失败 | 边界计算偏差 |
| test/refresh_controller_test.dart | 失败 | pumpAndSettle 超时 |
| test/refresh_physics_test.dart | 待重跑 | 之前超时 |
| test/refresh_state_machine_test.dart | 通过 | |
| test/refresh_test.dart | 失败 | pumpAndSettle 超时 & 状态错误 |
| test/slivers_test.dart | 通过 | |
| test/smart_refresher_test.dart | 失败 | 参数检查失败 & 超时 |
| test/test_indicator.dart | 跳过 | 辅助文件 |
