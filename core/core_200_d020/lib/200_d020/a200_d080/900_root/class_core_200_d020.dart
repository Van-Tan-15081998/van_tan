import 'package:van_tan_export/van_tan_export.dart';

/// -----
/// TODO: CoreState - [Cấu Trúc]
/// -----
mixin CoreState {
  /// -----
  /// TODO:
  /// -----
  CoreStateManagement? _globalStateManagementSystem;
  CoreStateManagement? get getGlobalStateManagementSystem => _globalStateManagementSystem;
  Future<void> onSetGlobalStateManagementSystem({required CoreStateManagement? value, bool? isPriorityOverride}) async {
    if (isPriorityOverride == true) {
      _globalStateManagementSystem = value;
    } else {
      _globalStateManagementSystem ??= value;
    }

    ///
    return;
  }
}
