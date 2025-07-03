import 'package:flutter/foundation.dart';

/// -----
/// TODO: CoreGameLoop - [Cấu Trúc] Vòng Lặp Game
/// -----
mixin CoreGameLoop {
  /// -----
  /// TODO:
  /// -----
  int _realTimeCounter  = 0;
  int get onGetRealTimeCounter => _realTimeCounter;
  void onUpdateRealTimeCounter() {
    if (_realTimeCounter <= 1000000) {
      _realTimeCounter += 1;
    } else {
      _realTimeCounter = 0;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  void onLoop() {
    onUpdateRealTimeCounter();

    ///
    return;
  }
}
