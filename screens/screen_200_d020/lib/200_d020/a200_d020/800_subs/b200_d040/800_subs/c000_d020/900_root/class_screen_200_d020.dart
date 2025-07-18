import 'package:van_tan_export/van_tan_export.dart';
import 'package:package_export/package_export.dart';

/// -----
/// TODO: CoreButtonBindingComponent - [Cấu Trúc] Thành Phần Nút Bấm Phụ Thuộc
/// -----
class CoreButtonBindingComponent extends PositionComponent with TapCallbacks, ExecutionCore, CoreComponent, CoreState {
  /// -----
  /// TODO: Constructor
  /// -----
  CoreButtonBindingComponent({
    required CoreStateManagement? globalStateManagementSystem,
    required Component? parentComponent,
    required double? sizeDx,
    required double? sizeDy,
    required double? positionDx,
    required double? positionDy,
    required this.onTapCancelEvent,
    required this.onTapDownEvent,
    required this.onTapUpEvent,
  }) {
    onSetGlobalStateManagementSystem(value: globalStateManagementSystem);
    onSetParentComponent(value: parentComponent);
    onSetCurrentComponent(value: this);
    onSetSizeDx(value: sizeDx);
    onSetSizeDy(value: sizeDy);
    onSetPositionDx(value: positionDx);
    onSetPositionDy(value: positionDy);
  }

  /// -----
  /// TODO: Attach Root
  /// -----
  @override
  Future<void> onAttachRoot({required dynamic attachValue, bool? shouldIgnoreAttachRootForSubCom}) async {
    try {
      /// -----
      /// TODO:
      /// -----

      /// -----
      /// TODO: Attach Root For SubCom
      /// -----
      if (shouldIgnoreAttachRootForSubCom == null || shouldIgnoreAttachRootForSubCom == false) {
        await onAttachRootForSubCom(attachValue: attachValue);
      }
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onAttachRoot]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Init Root
  /// -----
  @override
  Future<void> onInitRoot({bool? shouldIgnoreInitRootForSubCom}) async {
    try {
      /// -----
      /// TODO:
      /// -----

      /// -----
      /// TODO: Init Root For SubCom
      /// -----
      if (shouldIgnoreInitRootForSubCom == null || shouldIgnoreInitRootForSubCom == false) {
        await onInitRootForSubCom();
      }
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onInitRoot]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Setup Root
  /// -----
  @override
  Future<void> onSetupRoot({bool? shouldIgnoreSetupRootForSubCom}) async {
    try {
      /// -----
      /// TODO:
      /// -----
      await Future.wait([
        ///
      ]);

      /// -----
      /// TODO: Setup Root For SubCom
      /// -----
      if (shouldIgnoreSetupRootForSubCom == null || shouldIgnoreSetupRootForSubCom == false) {
        await onSetupRootForSubCom();
      }
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onSetupRoot]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Reset Root
  /// -----
  @override
  Future<void> onResetRoot({bool? shouldIgnoreResetRootForSubCom}) async {
    try {
      /// -----
      /// TODO:
      /// -----

      /// -----
      /// TODO: Init Root For SubCom
      /// -----
      if (shouldIgnoreResetRootForSubCom == null || shouldIgnoreResetRootForSubCom == false) {
        await onResetRootForSubCom();
      }
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onResetRoot]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Attach Root For SubCom
  /// -----
  @override
  Future<void> onAttachRootForSubCom({required dynamic attachValue}) async {
    ///
    try {
      /// -----
      /// TODO:
      /// -----
      await Future.wait([
        ///
      ]);

      ///
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onAttachRootForSubCom]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Setup Root For SubCom
  /// -----
  @override
  Future<void> onSetupRootForSubCom() async {
    ///
    try {
      /// -----
      /// TODO:
      /// -----
      await Future.wait([
        ///
      ]);

      ///
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onSetupRootForSubCom]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Init Root For SubCom
  /// -----
  @override
  Future<void> onInitRootForSubCom() async {
    ///
    try {
      /// -----
      /// TODO:
      /// -----
      await Future.wait([
        ///
      ]);

      ///
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onInitRootForSubCom]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Reset Root For SubCom
  /// -----
  @override
  Future<void> onResetRootForSubCom() async {
    try {
      /// -----
      /// TODO:
      /// -----
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onResetRootForSubCom]');
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  final Future<void> Function()? onTapCancelEvent;

  /// -----
  /// TODO:
  /// -----
  final Future<void> Function()? onTapDownEvent;

  /// -----
  /// TODO:
  /// -----
  final Future<void> Function()? onTapUpEvent;

  /// -----
  /// TODO: Hàm Thực Thi
  /// -----
  void onExecute() {
    ///
    return;
  }

  /// -----
  /// TODO: Kích Hoạt Hiệu Ứng Giao Diện (Nút Bấm Được Chọn)
  /// -----
  void onActive() {
    ///
    return;
  }

  /// -----
  /// TODO: Huỷ Kích Hoạt Hiệu Ứng Giao Diện (Nút Bấm Huỷ Chọn)
  /// -----
  void onInActive() {
    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  @override
  void onTapDown(TapDownEvent event) async {
    super.onTapDown(event);
    await onTapDownEvent?.call();
  }

  /// -----
  /// TODO:
  /// -----
  @override
  void onTapUp(TapUpEvent event) async {
    super.onTapUp(event);
    await onTapUpEvent?.call();
  }

  /// -----
  /// TODO:
  /// -----
  @override
  void onTapCancel(TapCancelEvent event) async {
    super.onTapCancel(event);
    await onTapCancelEvent?.call();
  }

  /// -----
  /// TODO: Kích Hoạt
  /// -----
  CoreGameUIComponent? _activeGameUIComponent;
  CoreGameUIComponent? get getActiveGameUIComponent => _activeGameUIComponent;
  void onSetActiveGameUIComponent({required CoreGameUIComponent? value, bool? caiDatUuTien}) {
    if (caiDatUuTien == true) {
      _activeGameUIComponent = value;
    } else {
      _activeGameUIComponent ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Kích Hoạt Viền Nổi Bật
  /// -----
  CoreGameUIComponent? _selectedGameUIComponent;
  CoreGameUIComponent? get getSelectedGameUIComponent => _selectedGameUIComponent;
  void onSetSelectedGameUIComponent({required CoreGameUIComponent? value, bool? caiDatUuTien}) {
    if (caiDatUuTien == true) {
      _selectedGameUIComponent = value;
    } else {
      _selectedGameUIComponent ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Huỷ Kích Hoạt
  /// -----
  CoreGameUIComponent? _inActiveGameUIComponent;
  CoreGameUIComponent? get getInActiveGameUIComponent => _inActiveGameUIComponent;
  void onSetInActiveGameUIComponent({required CoreGameUIComponent? value, bool? caiDatUuTien}) {
    if (caiDatUuTien == true) {
      _inActiveGameUIComponent = value;
    } else {
      _inActiveGameUIComponent ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  SpriteAnimationHasVisibility? _activeSpriteAnimation;
  SpriteAnimationHasVisibility? get getActiveSpriteAnimation => _activeSpriteAnimation;
  Future<void> onSetActiveSpriteAnimation({required SpriteAnimationHasVisibility? value, bool? caiDatUuTien}) async {
    if (caiDatUuTien == true) {
      _activeSpriteAnimation = value;
    } else {
      _activeSpriteAnimation ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  SpriteAnimationHasVisibility? _selectedSpriteAnimation;
  SpriteAnimationHasVisibility? get getSelectedSpriteAnimation => _selectedSpriteAnimation;
  Future<void> onSetSelectedSpriteAnimation({required SpriteAnimationHasVisibility? value, bool? caiDatUuTien}) async {
    if (caiDatUuTien == true) {
      _selectedSpriteAnimation = value;
    } else {
      _selectedSpriteAnimation ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  SpriteAnimationHasVisibility? _inActiveSpriteAnimation;
  SpriteAnimationHasVisibility? get getInActiveSpriteAnimation => _inActiveSpriteAnimation;
  Future<void> onSetInActiveSpriteAnimation({required SpriteAnimationHasVisibility? value, bool? caiDatUuTien}) async {
    if (caiDatUuTien == true) {
      _inActiveSpriteAnimation = value;
    } else {
      _inActiveSpriteAnimation ??= value;
    }

    return;
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();
    anchor = Anchor.center;
  }

  @override
  void update(double dt) {
    // TODO: implement update
    super.update(dt);
  }
}
