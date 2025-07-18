import 'package:package_export/package_export.dart';
import 'package:van_tan_export/van_tan_export.dart';

/// -----
/// TODO: CoreImageBindingComponent - [Cấu Trúc] Thành Phần Hình Ảnh Phụ Thuộc
/// -----
class CoreImageBindingComponent extends PositionComponent with ExecutionCore, CoreComponent, CoreState {
  /// -----
  /// TODO: Constructor
  /// -----
  CoreImageBindingComponent({
    required CoreStateManagement? globalStateManagementSystem,
    required Component? parentComponent,
    required double? sizeDx,
    required double? sizeDy,
    required double? positionDx,
    required double? positionDy,
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
  CoreGameUIComponent? _gameUIComponent;
  CoreGameUIComponent? get getGameUIComponent => _gameUIComponent;
  void onSetGameUIComponent({required CoreGameUIComponent? value, bool? caiDatUuTien}) {
    if (caiDatUuTien == true) {
      _gameUIComponent = value;
    } else {
      _gameUIComponent ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  SpriteAnimationHasVisibility? _spriteAnimation;
  SpriteAnimationHasVisibility? get getSpriteAnimation => _spriteAnimation;
  Future<void> onSetSpriteAnimation({required SpriteAnimationHasVisibility? value, bool? caiDatUuTien}) async {
    if (caiDatUuTien == true) {
      _spriteAnimation = value;
    } else {
      _spriteAnimation ??= value;
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
