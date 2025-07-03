import 'package:core_200_d000/core_200_d000_exp.dart';

/// -----
/// TODO: CoreProperties - [Cấu Trúc] Tập Hợp Thuộc Tính Lõi
/// -----
class CoreProperties with ExecutionCore {
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
    ///
    try {
      onSetExecutionCoreID(value: '[CoreProperties]', isPriorityOverride: true);

      /// -----
      /// TODO:
      /// -----
      await Future.wait([
        onSetDescription(value: CoreDescription.onDefault(), isPriorityOverride: true).catchError((e) => null),
        onSetPosition(value: CorePosition.onDefault(), isPriorityOverride: true).catchError((e) => null),
        onSetSize(value: CoreSize.onDefault(), isPriorityOverride: true).catchError((e) => null),
        onSetVelocity(value: CoreVelocity.onDefault(), isPriorityOverride: true).catchError((e) => null),
        onSetVisibility(value: CoreVisibility.onDefault(), isPriorityOverride: true).catchError((e) => null),
        onSetAppearance(value: CoreAppearance.onDefault(), isPriorityOverride: true).catchError((e) => null),
        onSetActivityState(value: CoreActivityState.onDefault(), isPriorityOverride: true).catchError((e) => null),
        onSetExistenceState(value: CoreExistenceState.onDefault(), isPriorityOverride: true).catchError((e) => null),
      ]);

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
    try {
      /// -----
      /// TODO:
      /// -----
      await Future.wait([
        onGetDescription?.onAttachRoot(attachValue: attachValue).catchError((e) => null) ??
            onReportRootIssue(nameFunction: '[onAttachRootForSubCom]'),
        onGetPosition?.onAttachRoot(attachValue: attachValue).catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onAttachRootForSubCom]'),
        onGetSize?.onAttachRoot(attachValue: attachValue).catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onAttachRootForSubCom]'),
        onGetVelocity?.onAttachRoot(attachValue: attachValue).catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onAttachRootForSubCom]'),
        onGetVisibility?.onAttachRoot(attachValue: attachValue).catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onAttachRootForSubCom]'),
        onGetAppearance?.onAttachRoot(attachValue: attachValue).catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onAttachRootForSubCom]'),
        onGetActivityState?.onAttachRoot(attachValue: attachValue).catchError((e) => null) ??
            onReportRootIssue(nameFunction: '[onAttachRootForSubCom]'),
        onGetExistenceState?.onAttachRoot(attachValue: attachValue).catchError((e) => null) ??
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
    try {
      /// -----
      /// TODO:
      /// -----
      await Future.wait([
        onGetDescription?.onSetupRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onSetupRootForSubCom]'),
        onGetPosition?.onSetupRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onSetupRootForSubCom]'),
        onGetSize?.onSetupRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onSetupRootForSubCom]'),
        onGetVelocity?.onSetupRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onSetupRootForSubCom]'),
        onGetVisibility?.onSetupRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onSetupRootForSubCom]'),
        onGetAppearance?.onSetupRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onSetupRootForSubCom]'),
        onGetActivityState?.onSetupRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onSetupRootForSubCom]'),
        onGetExistenceState?.onSetupRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onSetupRootForSubCom]'),
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
    try {
      /// -----
      /// TODO:
      /// -----
      await Future.wait([
        onGetDescription?.onInitRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onInitRootForSubCom]'),
        onGetPosition?.onInitRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onInitRootForSubCom]'),
        onGetSize?.onInitRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onInitRootForSubCom]'),
        onGetVelocity?.onInitRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onInitRootForSubCom]'),
        onGetVisibility?.onInitRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onInitRootForSubCom]'),
        onGetAppearance?.onInitRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onInitRootForSubCom]'),
        onGetActivityState?.onInitRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onInitRootForSubCom]'),
        onGetExistenceState?.onInitRoot().catchError((e) => null) ?? onReportRootIssue(nameFunction: '[onInitRootForSubCom]'),
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
  CoreDescription? _description;
  CoreDescription? get onGetDescription => _description;
  Future<void> onSetDescription({required CoreDescription? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _description = value;
    } else {
      _description ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CorePosition? _position;
  CorePosition? get onGetPosition => _position;
  Future<void> onSetPosition({required CorePosition? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _position = value;
    } else {
      _position ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CoreSize? _size;
  CoreSize? get onGetSize => _size;
  Future<void> onSetSize({required CoreSize? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _size = value;
    } else {
      _size ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CoreVelocity? _velocity;
  CoreVelocity? get onGetVelocity => _velocity;
  Future<void> onSetVelocity({required CoreVelocity? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _velocity = value;
    } else {
      _velocity ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CoreVisibility? _visibility;
  CoreVisibility? get onGetVisibility => _visibility;
  Future<void> onSetVisibility({required CoreVisibility? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _visibility = value;
    } else {
      _visibility ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CoreAppearance? _appearance;
  CoreAppearance? get onGetAppearance => _appearance;
  Future<void> onSetAppearance({required CoreAppearance? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _appearance = value;
    } else {
      _appearance ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CoreActivityState? _activityState;
  CoreActivityState? get onGetActivityState => _activityState;
  Future<void> onSetActivityState({required CoreActivityState? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _activityState = value;
    } else {
      _activityState ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CoreExistenceState? _existenceState;
  CoreExistenceState? get onGetExistenceState => _existenceState;
  Future<void> onSetExistenceState({required CoreExistenceState? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _existenceState = value;
    } else {
      _existenceState ??= value;
    }

    ///
    return;
  }
}
