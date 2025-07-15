import 'package:van_tan_export/van_tan_export.dart';

/// -----
/// TODO: CoreController - [Cấu Trúc]
/// -----
mixin CoreController {
  /// -----
  /// TODO:
  /// -----
  CoreMasterScreenController? _masterScreenController;
  CoreMasterScreenController? get getMasterScreenController => _masterScreenController;
  Future<void> onSetMasterScreenController({required CoreMasterScreenController? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _masterScreenController = value;
    } else {
      _masterScreenController ??= value;
    }

    ///
    return;
  }
}
