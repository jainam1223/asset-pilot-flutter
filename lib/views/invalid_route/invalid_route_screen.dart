import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utilities/extensions/context_extensions.dart';

/// Fallback screen for unknown/invalid routes (404).
class InvalidRouteScreen extends StatelessWidget {
  const InvalidRouteScreen({super.key, this.path});

  final String? path;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline,
              size: 48,
              color: context.appColors.errorFg,
            ),
            const Gap(12),
            Text('Page not found', style: context.appTextStyles.h2),
            if (path != null) ...[
              const Gap(6),
              Text(path!, style: context.appTextStyles.bodySmall),
            ],
          ],
        ),
      ),
    );
  }
}
