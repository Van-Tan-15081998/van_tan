import 'package:core_200_d020/core_200_d020_exp.dart';

/// -----
/// TODO: CoreScreenResolution - [Cấu Trúc] Kích Thước Khung Hình
/// -----
class CoreScreenResolution with ExecutionCore {
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
  /// TODO: Chiều Rộng Màn Hình Phi Vật Lý
  /// -----
  double? _virtualScreenWidth;
  double? get onGetVirtualScreenWidth => _virtualScreenWidth;
  Future<void> onSetVirtualScreenWidth({required double? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _virtualScreenWidth = value;
    } else {
      _virtualScreenWidth ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO: Chiều Cao Màn Hình Phi Vật Lý
  /// -----
  double? _virtualScreenHeight;
  double? get onGetVirtualScreenHeight => _virtualScreenHeight;
  Future<void> onSetVirtualScreenHeight({required double? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _virtualScreenHeight = value;
    } else {
      _virtualScreenHeight ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO: Chiều Rộng Màn Hình Vật Lý
  /// -----
  double? _physicalScreenWidth;
  double? get onGetPhysicalScreenWidth => _physicalScreenWidth;
  Future<void> onSetPhysicalScreenWidth({required double? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _physicalScreenWidth = value;
    } else {
      _physicalScreenWidth ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO: Chiều Cao Màn Hình Vật Lý
  /// -----
  double? _physicalScreenHeight;
  double? get onGetPhysicalScreenHeight => _physicalScreenHeight;
  Future<void> onSetPhysicalScreenHeight({required double? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _physicalScreenHeight = value;
    } else {
      _physicalScreenHeight ??= value;
    }

    ///
    return;
  }
}
