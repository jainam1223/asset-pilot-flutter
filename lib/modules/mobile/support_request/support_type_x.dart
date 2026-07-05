import 'package:flutter/material.dart';

import '../../../values/enumeration/statuses.dart';

/// Maps [SupportType] onto the File Support Request screen's chip label
/// and icon. Widgets never import `values/enumeration` directly — modules
/// own this mapping.
extension SupportTypeX on SupportType {
  String get label => switch (this) {
        SupportType.update => 'Install Software',
        SupportType.damage => 'Repair',
        SupportType.lost => 'Report Lost',
      };

  IconData get icon => switch (this) {
        SupportType.update => Icons.download_outlined,
        SupportType.damage => Icons.edit_outlined,
        SupportType.lost => Icons.warning_amber_outlined,
      };
}
