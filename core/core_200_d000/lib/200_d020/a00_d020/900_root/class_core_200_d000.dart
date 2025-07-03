import 'package:flutter/foundation.dart';

/// -----
/// TODO: ExecutionCore - [Cấu Trúc] Lõi Thực Thi
/// -----
mixin ExecutionCore {
  /// -----
  /// TODO: Mã Định Danh [Cấu Trúc] Lõi Thực Thi
  /// -----
  String? _executionCoreID;
  String? get onGetExecutionCoreID => _executionCoreID;
  Future<void> onSetExecutionCoreID({required String? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _executionCoreID = value;
    } else {
      _executionCoreID ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO: Attach Root
  /// -----
  Future<void> onAttachRoot({required dynamic attachValue, bool? shouldIgnoreAttachRootForSubCom}) async {
    ///
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

      ///
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onAttachRoot]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Init Root
  /// -----
  Future<void> onInitRoot({bool? shouldIgnoreInitRootForSubCom}) async {
    ///
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

      ///
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onInitRoot]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Setup Root
  /// -----
  Future<void> onSetupRoot({bool? shouldIgnoreSetupRootForSubCom}) async {
    ///
    try {
      /// -----
      /// TODO:
      /// -----

      /// -----
      /// TODO: Setup Root For SubCom
      /// -----
      if (shouldIgnoreSetupRootForSubCom == null || shouldIgnoreSetupRootForSubCom == false) {
        await onSetupRootForSubCom();
      }

      ///
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onSetupRoot]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Reset Root
  /// -----
  Future<void> onResetRoot({bool? shouldIgnoreResetRootForSubCom}) async {
    ///
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

      ///
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onResetRoot]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Attach Root For SubCom
  /// -----
  Future<void> onAttachRootForSubCom({required dynamic attachValue}) async {
    ///
    try {
      /// -----
      /// TODO:
      /// -----

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
  Future<void> onSetupRootForSubCom() async {
    ///
    try {
      /// -----
      /// TODO:
      /// -----

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
  Future<void> onInitRootForSubCom() async {
    ///
    try {
      /// -----
      /// TODO:
      /// -----

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
  Future<void> onResetRootForSubCom() async {
    ///
    try {
      /// -----
      /// TODO:
      /// -----

      ///
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onResetRootForSubCom]');
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  Future<void> onReportRootIssue({required String? nameFunction}) async {
    if (kDebugMode) {
      String message = '[❗️❗️❗️Báo Cáo Vấn Đề❗️❗️❗️]: $onGetExecutionCoreID ▶️ $nameFunction';
      print(message);
      // throw (Exception(message));
    }

    ///
    return;
  }
}
