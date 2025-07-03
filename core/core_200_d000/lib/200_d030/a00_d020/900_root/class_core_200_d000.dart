import 'package:core_200_d000/core_200_d000_exp.dart';

/// -----
/// TODO: CoreEntity - [Cấu Trúc] Thực Thể Nền Tảng / Cơ Bản Nhất Của Hệ Thống
/// -----
abstract class CoreEntity with ExecutionCore {
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
        onSetProperties(value: CoreProperties(), isPriorityOverride: true).catchError((e) => null),
        onSetMethods(value: CoreMethods(), isPriorityOverride: true).catchError((e) => null),
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
        onGetProperties?.onAttachRoot(attachValue: attachValue).catchError((e) => null) ??
            onReportRootIssue(nameFunction: '[onAttachRootForSubCom]'),
        onGetMethods?.onAttachRoot(attachValue: attachValue).catchError((e) => null) ??
            onReportRootIssue(nameFunction: '[onAttachRootForSubCom]'),
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
        onGetProperties?.onSetupRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onSetupRootForSubCom]'),
        onGetMethods?.onSetupRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onSetupRootForSubCom]'),
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
        onGetProperties?.onInitRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onInitRootForSubCom]'),
        onGetMethods?.onInitRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onInitRootForSubCom]'),
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
  /// TODO: Mã Định Danh
  /// -----
  String? _entityID;
  String? get onGetEntityID => _entityID;
  Future<void> onSetEntityID({required String? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _entityID = value;
    } else {
      _entityID ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CoreProperties? _properties;
  CoreProperties? get onGetProperties => _properties;
  Future<void> onSetProperties({required CoreProperties? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _properties = value;
    } else {
      _properties ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CoreMethods? _methods;
  CoreMethods? get onGetMethods => _methods;
  Future<void> onSetMethods({required CoreMethods? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _methods = value;
    } else {
      _methods ??= value;
    }

    ///
    return;
  }
}
