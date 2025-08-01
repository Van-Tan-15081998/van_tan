import 'package:van_tan_export/van_tan_export.dart';

/// -----
/// TODO: CoreTextDependencyManager - [Cấu Trúc] Quản Lý Thành Phần Văn Bản Phụ Thuộc
/// -----
class CoreTextDependencyManager with ExecutionCore, CoreComponent, CoreState {
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
        getTextBindingComponentManager?.onSetupRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onSetupRootForSubCom]'),

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
        getTextBindingComponentManager?.onInitRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onInitRootForSubCom]'),

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
  CoreTextBindingComponentManager? _textBindingComponentManager;
  CoreTextBindingComponentManager? get getTextBindingComponentManager => _textBindingComponentManager;
  Future<void> onSetTextBindingComponentManager({required CoreTextBindingComponentManager? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _textBindingComponentManager = value;
    } else {
      _textBindingComponentManager ??= value;
    }

    ///
    return;
  }
}
