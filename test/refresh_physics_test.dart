/*
    Author: Jpeng
    Email: peng8350@gmail.com
    createTime: 2019-07-21 13:00
 */

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'dataSource.dart';
import 'test_indicator.dart';

void main() {
  group("refresh physics test", () {
    testWidgets(
        "clamping physics,when user flip gesture up ,it shouldn't move out of viewport area",
        (tester) async {
      final RefreshController _refreshController = RefreshController();
      await tester.pumpWidget(MaterialApp(
        home: SmartRefresher(
          header: TestHeader(),
          footer: TestFooter(),
          enablePullUp: true,
          enablePullDown: true,
          child: ListView.builder(
            itemBuilder: (c, i) => Center(
              child: Text(data[i]),
            ),
            itemCount: 23,
            itemExtent: 100,
            physics: ClampingScrollPhysics(),
          ),
          controller: _refreshController,
        ),
      ));

      await tester.fling(find.byType(Scrollable), const Offset(0, 500), 5200, warnIfMissed: false);
      while (tester.binding.transientCallbackCount > 0) {
        await tester.pump(const Duration(milliseconds: 20));
      }
      expect(_refreshController.position!.pixels, 0.0);

      _refreshController.position!.jumpTo(100.0);
      await tester.fling(find.byType(Scrollable), const Offset(0, 500), 5200, warnIfMissed: false);
      while (tester.binding.transientCallbackCount > 0) {
        await tester.pump(const Duration(milliseconds: 20));
      }
      expect(_refreshController.position!.pixels, 0.0);

      _refreshController.position!.jumpTo(_refreshController.position!.maxScrollExtent);
      await tester.fling(find.byType(Scrollable), const Offset(0, -500), 5200, warnIfMissed: false);
      while (tester.binding.transientCallbackCount > 0) {
        await tester.pump(const Duration(milliseconds: 20));
      }
      expect(_refreshController.position!.pixels,
          _refreshController.position!.maxScrollExtent);

      _refreshController.position!
          .jumpTo(_refreshController.position!.maxScrollExtent - 50.0);
      await tester.fling(find.byType(Scrollable), const Offset(0, -500), 5200, warnIfMissed: false);
      while (tester.binding.transientCallbackCount > 0) {
        await tester.pump(const Duration(milliseconds: 20));
      }
      expect(_refreshController.position!.pixels,
          _refreshController.position!.maxScrollExtent);
    });

    testWidgets("bouncing physics,verify default attribute", (tester) async {
      final RefreshController _refreshController = RefreshController();
      await tester.pumpWidget(MaterialApp(
        home: SmartRefresher(
          header: TestHeader(),
          footer: TestFooter(),
          enablePullUp: true,
          enablePullDown: true,
          child: ListView.builder(
            itemBuilder: (c, i) => Center(
              child: Text(data[i]),
            ),
            itemCount: 23,
            itemExtent: 100,
            physics: BouncingScrollPhysics(),
          ),
          controller: _refreshController,
        ),
      ));

      await tester.fling(find.byType(Scrollable), Offset(0, 500.0), 1000, warnIfMissed: false);
      while (tester.binding.transientCallbackCount > 0) {
        await tester.pump(const Duration(milliseconds: 20));
      }
      expect(_refreshController.position!.pixels, 0.0);

      _refreshController.position!.jumpTo(0.0);
      await tester.fling(find.byType(Scrollable), Offset(0, 500.0), 1000, warnIfMissed: false);
      while (tester.binding.transientCallbackCount > 0) {
        await tester.pump(const Duration(milliseconds: 20));
      }
      expect(_refreshController.position!.pixels, 0.0);

      _refreshController.position!.jumpTo(_refreshController.position!.maxScrollExtent);
      await tester.fling(find.byType(Scrollable), Offset(0, -500.0), 5000, warnIfMissed: false);
      while (tester.binding.transientCallbackCount > 0) {
        await tester.pump(const Duration(milliseconds: 20));
      }
      expect(_refreshController.position!.pixels,
          _refreshController.position!.maxScrollExtent);
    });

    testWidgets("bouncing physics,verify RefreshConfiguration attribute",
        (tester) async {
      final RefreshController _refreshController = RefreshController();
      await tester.pumpWidget(MaterialApp(
        home: RefreshConfiguration(
          child: SmartRefresher(
            header: TestHeader(),
            footer: TestFooter(),
            enablePullUp: true,
            enablePullDown: true,
            child: ListView.builder(
              itemBuilder: (c, i) => Center(
                child: Text(data[i]),
              ),
              itemCount: 23,
              itemExtent: 100,
              physics: BouncingScrollPhysics(),
            ),
            controller: _refreshController,
          ),
          maxOverScrollExtent: 100.0,
          maxUnderScrollExtent: 100.0,
        ),
      ));

      await tester.drag(find.byType(Scrollable), Offset(0, 500.0), touchSlopY: 0.0, warnIfMissed: false);
      await tester.pump();
      expect(_refreshController.position!.pixels, -100.0);

      _refreshController.position!
          .jumpTo(_refreshController.position!.maxScrollExtent);
      await tester.fling(find.byType(Scrollable), Offset(0, -500.0), 5000, warnIfMissed: false);
      while (tester.binding.transientCallbackCount > 0) {
        await tester.pump(const Duration(milliseconds: 20));
      }
      expect(_refreshController.position!.pixels,
          _refreshController.position!.maxScrollExtent + 100.0);
    });
  });

  testWidgets("verity if refresh physics updated", (tester) async {
    final RefreshController refreshController = RefreshController();
    await tester.pumpWidget(MaterialApp(
      home: RefreshConfiguration(
        child: SmartRefresher(
          header: TestHeader(),
          footer: TestFooter(),
          enablePullUp: true,
          enablePullDown: true,
          child: ListView.builder(
            itemBuilder: (c, i) => Center(
              child: Text(data[i]),
            ),
            itemCount: 23,
            itemExtent: 100,
          ),
          controller: refreshController,
        ),
        maxOverScrollExtent: 200.0,
        maxUnderScrollExtent: 300.0,
      ),
    ));
    expect(
        (refreshController.position!.physics as RefreshPhysics).updateFlag, 1);
    await tester.pumpWidget(MaterialApp(
      home: RefreshConfiguration(
        child: SmartRefresher(
          header: TestHeader(),
          footer: TestFooter(),
          enablePullUp: true,
          enablePullDown: true,
          child: ListView.builder(
            itemBuilder: (c, i) => Center(
              child: Text(data[i]),
            ),
            itemCount: 23,
            itemExtent: 100,
          ),
          controller: refreshController,
        ),
        maxOverScrollExtent: 150.0,
        maxUnderScrollExtent: 300.0,
      ),
    ));
    expect(
        (refreshController.position!.physics as RefreshPhysics).updateFlag, 0);
    expect(
        (refreshController.position!.physics as RefreshPhysics)
            .maxOverScrollExtent,
        150);

    await tester.pumpWidget(MaterialApp(
      home: RefreshConfiguration(
        child: SmartRefresher(
          header: TestHeader(),
          footer: TestFooter(),
          enablePullUp: true,
          enablePullDown: true,
          child: ListView.builder(
            itemBuilder: (c, i) => Center(
              child: Text(data[i]),
            ),
            itemCount: 23,
            itemExtent: 100,
          ),
          controller: refreshController,
        ),
        maxOverScrollExtent: 200.0,
        maxUnderScrollExtent: 300.0,
      ),
    ));
    expect(
        (refreshController.position!.physics as RefreshPhysics).updateFlag, 1);
    await tester.pumpWidget(MaterialApp(
      home: RefreshConfiguration(
        child: SmartRefresher(
          header: TestHeader(),
          footer: TestFooter(),
          enablePullUp: true,
          enablePullDown: true,
          child: ListView.builder(
            itemBuilder: (c, i) => Center(
              child: Text(data[i]),
            ),
            itemCount: 23,
            itemExtent: 100,
          ),
          controller: refreshController,
        ),
        maxOverScrollExtent: 200.0,
        maxUnderScrollExtent: 300.0,
      ),
    ));
    expect(
        (refreshController.position!.physics as RefreshPhysics).updateFlag, 1);
  });

  testWidgets("when viewport not full, pull up can trigger loading",
      (tester) async {
    final RefreshController _refreshController = RefreshController();
    await tester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
      child: RefreshConfiguration(
        child: SmartRefresher(
          header: TestHeader(),
          footer: CustomFooter(
            loadStyle: LoadStyle.ShowAlways,
            builder: (c, m) => Container(),
          ),
          enablePullUp: true,
          enablePullDown: true,
          child: ListView.builder(
            itemBuilder: (c, i) => Center(
              child: Text(data[i]),
            ),
            itemCount: 1,
            itemExtent: 100,
          ),
          controller: _refreshController,
        ),
        footerTriggerDistance: -30.0,
      ),
    ));

    await tester.drag(find.byType(Scrollable), const Offset(0, -500.0), touchSlopY: 0.0, warnIfMissed: false);
    await tester.pump();
    await tester.pump(Duration(milliseconds: 100));
    expect(_refreshController.footerStatus, LoadStatus.loading);
    expect(_refreshController.position!.pixels, greaterThanOrEqualTo(0.0));

    await tester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
      child: RefreshConfiguration(
        child: SmartRefresher(
          header: TestHeader(),
          footer: CustomFooter(
            loadStyle: LoadStyle.HideAlways,
            builder: (c, m) => Container(),
          ),
          enablePullUp: true,
          enablePullDown: true,
          child: ListView.builder(
            itemBuilder: (c, i) => Center(
              child: Text(data[i]),
            ),
            itemCount: 1,
            itemExtent: 100,
          ),
          controller: _refreshController,
        ),
        footerTriggerDistance: -30.0,
      ),
    ));

    await tester.drag(find.byType(Scrollable), const Offset(0, -500.0), touchSlopY: 0.0, warnIfMissed: false);
    await tester.pump();
    await tester.pump(Duration(milliseconds: 100));
    expect(_refreshController.footerStatus, LoadStatus.loading);
    expect(_refreshController.position!.pixels, greaterThanOrEqualTo(0.0));
  });
}
