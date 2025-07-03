import 'package:van_tan_export/van_tan_export.dart';

/// -----
/// TODO: CoreComponent - [Cấu Trúc] Thành Phần Core
/// -----
mixin CoreComponent {
  /// -----
  /// TODO: SizeDx
  /// -----
  double? _sizeDx;
  double? get getSizeDx => _sizeDx;
  Future<void> onSetSizeDx({required double? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      if (value?.isNaN == false && value?.isFinite == true) {
        _sizeDx = value;
      }
    } else {
      if (value?.isNaN == false && value?.isFinite == true) {
        _sizeDx ??= value;
      }
    }

    return;
  }

  /// -----
  /// TODO: SizeDy
  /// -----
  double? _sizeDy;
  double? get getSizeDy => _sizeDy;
  Future<void> onSetSizeDy({required double? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      if (value?.isNaN == false && value?.isFinite == true) {
        _sizeDy = value;
      }
    } else {
      if (value?.isNaN == false && value?.isFinite == true) {
        _sizeDy ??= value;
      }
    }

    return;
  }

  /// -----
  /// TODO: PositionDx
  /// -----
  double? _positionDx;
  double? get getPositionDx => _positionDx;
  Future<void> onSetPositionDx({required double? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      if (value?.isNaN == false && value?.isFinite == true) {
        _positionDx = value;
      }
    } else {
      if (value?.isNaN == false && value?.isFinite == true) {
        _positionDx ??= value;
      }
    }

    return;
  }

  /// -----
  /// TODO: PositionDy
  /// -----
  double? _positionDy;
  double? get getPositionDy => _positionDy;
  Future<void> onSetPositionDy({required double? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      if (value?.isNaN == false && value?.isFinite == true) {
        _positionDy = value;
      }
    } else {
      if (value?.isNaN == false && value?.isFinite == true) {
        _positionDy ??= value;
      }
    }

    return;
  }

  /// -----
  /// TODO: Add Comp Root
  /// -----
  Future<void> onAddRoot({required FlameGame? flameGame, required Component? component}) async {
    /// -----
    /// TODO: Add Comp Root For SubCom
    /// -----
    await onAddRootForSubCom(flameGame: flameGame, component: component);

    ///
    return;
  }

  /// -----
  /// TODO: Add Comp Root For SubCom
  /// -----
  Future<void> onAddRootForSubCom({required FlameGame? flameGame, required Component? component}) async {
    ///
    return;
  }

  /// -----
  /// TODO: Remove Comp Root
  /// -----
  Future<void> onRemoveRoot({required FlameGame? flameGame, required Component? component}) async {
    /// -----
    /// TODO: Remove Comp Root For SubCom
    /// -----
    await onRemoveRootForSubCom(flameGame: flameGame, component: component);

    ///
    return;
  }

  /// -----
  /// TODO: Remove Comp Root For SubCom
  /// -----
  Future<void> onRemoveRootForSubCom({required FlameGame? flameGame, required Component? component}) async {
    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  Future<void> onAddComponent({
    required FlameGame? flameGame, //
    required Component? childComponent, //
    required Component? parentComponent, //
  }) async {
    ///
    try {
      if (flameGame != null) {
        if (childComponent != null && childComponent.isMounted == false) {
          await flameGame.add(childComponent);
        }
      } else if (parentComponent != null) {
        if (childComponent != null && childComponent.isMounted == false) {
          await parentComponent.add(childComponent);
        }
      }
    } catch (e) {
      /// Ghi log
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  Future<void> onRemoveComponent({required Component? component}) async {
    ///
    try {
      if (component != null && component.isMounted == true) {
        component.removeFromParent();
      }
    } catch (e) {
      /// Ghi log
    }

    ///
    return;
  }
}
