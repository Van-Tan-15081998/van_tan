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
  void onSetSizeDx({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      if (value?.isNaN == false && value?.isFinite == true) {
        _sizeDx = value;
      }
    } else {
      if (value?.isNaN == false && value?.isFinite == true) {
        _sizeDx ??= value;
      }
    }

    if (getCurrentComponent is PositionComponent) {
      (getCurrentComponent as PositionComponent).size.x = getSizeDx ?? 0;
    }
    if (getCurrentComponent is TextComponent) {
      (getCurrentComponent as TextComponent).size.x = getSizeDx ?? 0;
    }

    return;
  }

  /// -----
  /// TODO: SizeDy
  /// -----
  double? _sizeDy;
  double? get getSizeDy => _sizeDy;
  void onSetSizeDy({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      if (value?.isNaN == false && value?.isFinite == true) {
        _sizeDy = value;
      }
    } else {
      if (value?.isNaN == false && value?.isFinite == true) {
        _sizeDy ??= value;
      }
    }

    if (getCurrentComponent is PositionComponent) {
      (getCurrentComponent as PositionComponent).size.y = getSizeDy ?? 0;
    }
    if (getCurrentComponent is TextComponent) {
      (getCurrentComponent as TextComponent).size.y = getSizeDy ?? 0;
    }

    return;
  }

  /// -----
  /// TODO: PositionDx
  /// -----
  double? _positionDx;
  double? get getPositionDx => _positionDx;
  void onSetPositionDx({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      if (value?.isNaN == false && value?.isFinite == true) {
        _positionDx = value;
      }
    } else {
      if (value?.isNaN == false && value?.isFinite == true) {
        _positionDx ??= value;
      }
    }

    if (getCurrentComponent is PositionComponent) {
      (getCurrentComponent as PositionComponent).position.x = getPositionDx ?? 0;
    }
    if (getCurrentComponent is TextComponent) {
      (getCurrentComponent as TextComponent).position.x = getPositionDx ?? 0;
    }

    return;
  }

  /// -----
  /// TODO: PositionDy
  /// -----
  double? _positionDy;
  double? get getPositionDy => _positionDy;
  void onSetPositionDy({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      if (value?.isNaN == false && value?.isFinite == true) {
        _positionDy = value;
      }
    } else {
      if (value?.isNaN == false && value?.isFinite == true) {
        _positionDy ??= value;
      }
    }

    if (getCurrentComponent is PositionComponent) {
      (getCurrentComponent as PositionComponent).position.y = getPositionDy ?? 0;
    }
    if (getCurrentComponent is TextComponent) {
      (getCurrentComponent as TextComponent).position.y = getPositionDy ?? 0;
    }

    return;
  }

  /// -----
  /// TODO: Current Component
  /// -----
  Component? _currentComponent;
  Component? get getCurrentComponent => _currentComponent;
  void onSetCurrentComponent({required Component? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentComponent = value;
    } else {
      _currentComponent ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO: Parent Component
  /// -----
  Component? _parentComponent;
  Component? get getParentComponent => _parentComponent;
  void onSetParentComponent({required Component? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _parentComponent = value;
    } else {
      _parentComponent ??= value;
    }

    ///
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
  /// TODO: Kích Hoạt Hiển Thị
  /// -----
  Future<void> onActiveShow() async {
    await onAddToParent();

    return;
  }

  /// -----
  /// TODO: Huỷ Kích Hoạt Hiển Thị
  /// -----
  Future<void> onInActiveShow() async {
    await onRemoveFromParent();

    return;
  }

  /// -----
  /// TODO:
  /// -----
  Future<void> onAddToParent() async {
    if (getParentComponent != null && getCurrentComponent != null && getCurrentComponent?.isMounted == false) {
      await getParentComponent?.add(getCurrentComponent!);
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  Future<void> onRemoveFromParent() async {
    if (getCurrentComponent?.isMounted == true) {
      getCurrentComponent?.removeFromParent();
    }

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
          // await flameGame.add(childComponent); // Update v2
          childComponent.parent = flameGame;
        }
      } else if (parentComponent != null) {
        if (childComponent != null && childComponent.isMounted == false) {
          // await parentComponent.add(childComponent); // Update v2
          childComponent.parent = parentComponent;
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
