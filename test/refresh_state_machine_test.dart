import 'package:flutter_test/flutter_test.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RefreshStateMachine {
  RefreshStatus status = RefreshStatus.idle;
  final double triggerDistance;
  final bool skipCanRefresh;

  RefreshStateMachine({
    this.triggerDistance = 80.0,
    this.skipCanRefresh = false,
  });

  void onOffsetChange(double offset, bool isDragging) {
    if (status == RefreshStatus.refreshing ||
        status == RefreshStatus.completed ||
        status == RefreshStatus.failed ||
        status == RefreshStatus.twoLeveling ||
        status == RefreshStatus.twoLevelOpening ||
        status == RefreshStatus.twoLevelClosing) {
      return;
    }

    if (isDragging) {
      if (offset >= triggerDistance) {
        if (skipCanRefresh) {
          // In actual logic, skipCanRefresh goes directly to refreshing when released,
          // but if we want to skip canRefresh state, we might stay idle or indicate ready.
          // Let's mimic original logic: if skipCanRefresh is true, it still stays idle until release,
          // or enters refreshing directly upon release.
          // For simplicity, let's say it stays idle during drag if skipCanRefresh is true, 
          // or maybe we just don't change status to canRefresh.
        } else {
          status = RefreshStatus.canRefresh;
        }
      } else {
        status = RefreshStatus.idle;
      }
    }
  }

  void onRelease(double offset) {
    if (status == RefreshStatus.canRefresh) {
      status = RefreshStatus.refreshing;
    } else if (skipCanRefresh && offset >= triggerDistance) {
      status = RefreshStatus.refreshing;
    }
  }

  void onComplete() {
    if (status == RefreshStatus.refreshing) {
      status = RefreshStatus.completed;
    }
  }
}

void main() {
  group('RefreshStateMachine', () {
    test('Initial state is idle', () {
      final machine = RefreshStateMachine();
      expect(machine.status, RefreshStatus.idle);
    });

    test('Drag beyond trigger distance changes status to canRefresh', () {
      final machine = RefreshStateMachine(triggerDistance: 80.0);
      machine.onOffsetChange(85.0, true);
      expect(machine.status, RefreshStatus.canRefresh);
    });

    test('Drag below trigger distance changes status back to idle', () {
      final machine = RefreshStateMachine(triggerDistance: 80.0);
      machine.onOffsetChange(85.0, true);
      expect(machine.status, RefreshStatus.canRefresh);
      machine.onOffsetChange(75.0, true);
      expect(machine.status, RefreshStatus.idle);
    });

    test('Release at canRefresh triggers refreshing', () {
      final machine = RefreshStateMachine(triggerDistance: 80.0);
      machine.onOffsetChange(85.0, true);
      machine.onRelease(85.0);
      expect(machine.status, RefreshStatus.refreshing);
    });

    test('onComplete changes status to completed', () {
      final machine = RefreshStateMachine(triggerDistance: 80.0);
      machine.onOffsetChange(85.0, true);
      machine.onRelease(85.0);
      machine.onComplete();
      expect(machine.status, RefreshStatus.completed);
    });
  });
}
