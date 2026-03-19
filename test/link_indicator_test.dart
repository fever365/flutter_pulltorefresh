import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TargetHeader extends StatefulWidget {
  TargetHeader({Key? key}) : super(key: key);

  @override
  TargetHeaderState createState() => TargetHeaderState();
}

class TargetHeaderState extends State<TargetHeader> with RefreshProcessor {
  RefreshStatus? mode;
  double offset = 0.0;

  @override
  void onModeChange(RefreshStatus? mode) {
    this.mode = mode;
  }

  @override
  void onOffsetChange(double offset) {
    this.offset = offset;
  }

  @override
  Widget build(BuildContext context) {
    return Text("Mode: $mode");
  }
}

class TargetFooter extends StatefulWidget {
  TargetFooter({Key? key}) : super(key: key);

  @override
  TargetFooterState createState() => TargetFooterState();
}

class TargetFooterState extends State<TargetFooter> with LoadingProcessor {
  LoadStatus? mode;
  double offset = 0.0;

  @override
  void onModeChange(LoadStatus? mode) {
    this.mode = mode;
  }

  @override
  void onOffsetChange(double offset) {
    this.offset = offset;
  }

  @override
  Widget build(BuildContext context) {
    return Text("Mode: $mode");
  }
}

void main() {
  testWidgets('LinkHeader basic coverage', (WidgetTester tester) async {
    final GlobalKey<TargetHeaderState> linkKey = GlobalKey();
    final RefreshController controller = RefreshController();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: TargetHeader(key: linkKey)),
          body: SmartRefresher(
            controller: controller,
            header: LinkHeader(linkKey: linkKey),
            child: ListView.builder(
              itemBuilder: (c, i) => Container(height: 100, child: Text("Item $i")),
              itemCount: 20,
            ),
          ),
        ),
      ),
    );

    await tester.drag(find.byType(Scrollable), const Offset(0, 500.0), touchSlopY: 0.0, warnIfMissed: false);
    await tester.pump();
    await tester.pump(Duration(milliseconds: 100));
    
    // We expect the proxy to have called the target
    expect(linkKey.currentState!.offset, greaterThan(0));
  });

  testWidgets('LinkFooter basic coverage', (WidgetTester tester) async {
    final GlobalKey<TargetFooterState> linkKey = GlobalKey();
    final RefreshController controller = RefreshController();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          bottomNavigationBar: BottomAppBar(child: TargetFooter(key: linkKey)),
          body: SmartRefresher(
            controller: controller,
            enablePullUp: true,
            footer: LinkFooter(linkKey: linkKey),
            child: ListView.builder(
              itemBuilder: (c, i) => Container(height: 100, child: Text("Item $i")),
              itemCount: 20,
            ),
          ),
        ),
      ),
    );

    controller.position!.jumpTo(controller.position!.maxScrollExtent);
    await tester.pump(Duration(milliseconds: 500));

    await tester.drag(find.byType(Scrollable), const Offset(0, -500.0), touchSlopY: 0.0, warnIfMissed: false);
    await tester.pump();
    await tester.pump(Duration(milliseconds: 100));
    
    expect(linkKey.currentState!.offset, greaterThan(0));
  });
}
