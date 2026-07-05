import 'package:flutter/material.dart';

import '../../../utilities/extensions/context_extensions.dart';
import '../../../widgets/widgets.dart';
import 'admin_shell.dart';

/// Generic empty-state page for the IT Admin variant.
///
/// Wraps the shared [EmptyStateView] in an [AdminShell] so any admin route
/// that has no data (or isn't built out yet) can present a consistent, centered
/// placeholder. Callers supply the top-bar [title]; the icon/heading/message
/// default to a neutral "coming soon" state and can each be overridden.
class AdminEmptyScreen extends StatelessWidget {
  const AdminEmptyScreen({
    required this.title,
    super.key,
    this.icon = Icons.inbox_outlined,
    this.heading,
    this.message,
    this.semantic = AppSemantic.neutral,
  });

  /// Top-bar title for the shell.
  final String title;

  /// Icon shown in the empty-state view.
  final IconData icon;

  /// Primary line of the empty state. Falls back to [title] when omitted.
  final String? heading;

  /// Supporting line. Falls back to the shared "coming soon" copy.
  final String? message;

  final AppSemantic semantic;

  @override
  Widget build(BuildContext context) {
    return AdminShell(
      title: title,
      child: EmptyStateView(
        icon: icon,
        title: heading ?? title,
        message: message ?? context.l10n.comingSoon,
        semantic: semantic,
      ),
    );
  }
}
