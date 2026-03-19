# 测试修复进度 (2026-03-19)

| 测试文件 | 状态 | 备注 |
| :--- | :--- | :--- |
| test/dataSource.dart | 跳过 | 辅助文件 |
| test/final_coverage_test.dart | **通过** | 修正 Sliver 布局后恢复正常 |
| test/indicators_coverage_test.dart | **通过** | 物理引擎适配后状态切换正常 |
| test/link_indicator_test.dart | 失败 | 剩余 LinkFooter 边界问题 |
| test/loadmore_test.dart | 失败 | 剩余 3 个失败，涉及复杂 Ballistic 模拟 |
| test/localizations_test.dart | 通过 | |
| test/more_indicators_test.dart | **通过** | 增加拖拽距离后触发成功 |
| test/more_logic_test.dart | 失败 | Fling 触发时机差异 |
| test/physics_boundary_test.dart | 失败 | 边界计算偏差 |
| test/refresh_controller_test.dart | 失败 | 部分异步请求状态未到位 |
| test/refresh_physics_test.dart | 失败 | `updateFlag` 逻辑变更及数值精度问题 |
| test/refresh_state_machine_test.dart | 通过 | |
| test/refresh_test.dart | 失败 | 剩余 1 个 TwoLevel 动画同步问题 |
| test/slivers_test.dart | 通过 | |
| test/smart_refresher_test.dart | 失败 | 剩余 3 个失败，涉及 HitTest 和时机 |
| test/test_indicator.dart | 跳过 | 辅助文件 |
