import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'generated/l10n/app_localizations.dart';
import 'utilities/navigation/admin_routes.dart';
import 'utilities/navigation/app_routes.dart';
import 'utilities/navigation/mobile_routes.dart';
import 'values/app_theme/app_theme.dart';
import 'values/enumeration/app_variant.dart';

/// Root application widget. Built once per entry point with a fixed
/// [AppVariant], which selects the router (and thus the whole navigation
/// tree). Mobile and admin never share a router.
class AssetPilotApp extends StatefulWidget {
  const AssetPilotApp({super.key, required this.variant});

  final AppVariant variant;

  @override
  State<AssetPilotApp> createState() => _AssetPilotAppState();
}

class _AssetPilotAppState extends State<AssetPilotApp> {
  late final GoRouter _router = switch (widget.variant) {
    AppVariant.mobile => buildMobileRouter(),
    AppVariant.admin => buildAdminRouter(),
  };

  @override
  void initState() {
    super.initState();
    appRouter = _router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'AssetPilot',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: _router,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
