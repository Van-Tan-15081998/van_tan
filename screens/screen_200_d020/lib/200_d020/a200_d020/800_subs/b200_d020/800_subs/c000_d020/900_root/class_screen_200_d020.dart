import 'package:flutter/material.dart';
import 'package:van_tan_export/van_tan_export.dart';

/// -----
/// TODO: CoreScreenBindingComponent - [Cấu Trúc] Thành Phần Màn Hình Phụ Thuộc
/// -----
class CoreScreenBindingComponent extends PositionComponent with ExecutionCore, CoreComponent, CoreState {

  /// -----
  /// TODO: [Constructor]
  /// -----
  CoreScreenBindingComponent({
    required CoreStateManagement? globalStateManagementSystem, //
    required Component? parentComponent, //
    required double? sizeDx, //
    required double? sizeDy, //
    required double? positionDx, //
    required double? positionDy, //
  }) {
    onSetGlobalStateManagementSystem(value: globalStateManagementSystem, isPriorityOverride: true);
    onSetParentComponent(value: parentComponent);
    onSetCurrentComponent(value: this);
    onSetSizeDx(value: sizeDx);
    onSetSizeDy(value: sizeDy);
    onSetPositionDx(value: positionDx);
    onSetPositionDy(value: positionDy);
  }

  /// -----
  /// TODO:
  /// -----
  Color backgroundColor() => Colors.transparent;

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
        getScreenDependencyManager?.onSetupRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onSetupRootForSubCom]'),
        getButtonDependencyManager?.onSetupRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onSetupRootForSubCom]'),
        getTextDependencyManager?.onSetupRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onSetupRootForSubCom]'),
        getImageDependencyManager?.onSetupRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onSetupRootForSubCom]'),
        getCompositeDependencyManager?.onSetupRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onSetupRootForSubCom]'),

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
        getScreenDependencyManager?.onInitRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onInitRootForSubCom]'),
        getButtonDependencyManager?.onInitRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onInitRootForSubCom]'),
        getTextDependencyManager?.onInitRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onInitRootForSubCom]'),
        getImageDependencyManager?.onInitRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onInitRootForSubCom]'),
        getCompositeDependencyManager?.onInitRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onInitRootForSubCom]'),

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
  CoreScreenDependencyManager? _screenDependencyManager;
  CoreScreenDependencyManager? get getScreenDependencyManager => _screenDependencyManager;
  Future<void> onSetScreenDependencyManager({required CoreScreenDependencyManager? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _screenDependencyManager = value;
    } else {
      _screenDependencyManager ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CoreButtonDependencyManager? _buttonDependencyManager;
  CoreButtonDependencyManager? get getButtonDependencyManager => _buttonDependencyManager;
  Future<void> onSetButtonDependencyManager({required CoreButtonDependencyManager? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _buttonDependencyManager = value;
    } else {
      _buttonDependencyManager ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CoreTextDependencyManager? _textDependencyManager;
  CoreTextDependencyManager? get getTextDependencyManager => _textDependencyManager;
  Future<void> onSetTextDependencyManager({required CoreTextDependencyManager? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _textDependencyManager = value;
    } else {
      _textDependencyManager ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CoreImageDependencyManager? _imageDependencyManager;
  CoreImageDependencyManager? get getImageDependencyManager => _imageDependencyManager;
  Future<void> onSetImageDependencyManager({required CoreImageDependencyManager? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _imageDependencyManager = value;
    } else {
      _imageDependencyManager ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CoreCompositeDependencyManager? _compositeDependencyManager;
  CoreCompositeDependencyManager? get getCompositeDependencyManager => _compositeDependencyManager;
  Future<void> onSetCompositeDependencyManager({required CoreCompositeDependencyManager? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _compositeDependencyManager = value;
    } else {
      _compositeDependencyManager ??= value;
    }

    ///
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
