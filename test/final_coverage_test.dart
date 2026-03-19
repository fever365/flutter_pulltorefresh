import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

void main() {
  testWidgets('ScrollController sharing test', (WidgetTester tester) async {
    final ScrollController externalController = ScrollController();
    final RefreshController refreshController = RefreshController();
    
    await tester.pumpWidget(
      MaterialApp(
        home: SmartRefresher(
          controller: refreshController,
          scrollController: externalController,
          child: ListView.builder(
            itemBuilder: (c, i) => Container(height: 100, child: Text("Item $i")),
            itemCount: 20,
          ),
        ),
      ),
    );

    externalController.jumpTo(150.0);
    await tester.pump();
    
    // 验证两个 controller 是否同步
    expect(refreshController.position!.pixels, 150.0);
  });

  testWidgets('SmartRefresher.builder pattern coverage', (WidgetTester tester) async {
    final RefreshController controller = RefreshController();
    await tester.pumpWidget(
      MaterialApp(
        home: SmartRefresher.builder(
          controller: controller,
          builder: (context, physics) {
            return CustomScrollView(
              physics: physics,
              slivers: [
                const ClassicHeader(),
                SliverToBoxAdapter(child: Container(height: 1000)),
              ],
            );
          },
        ),
      ),
    );

    await tester.pump();
    expect(find.byType(ClassicHeader, skipOffstage: false), findsOneWidget);
  });
}
