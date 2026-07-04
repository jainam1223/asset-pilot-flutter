import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/network/network_state.dart';
import '../../../values/constants/app_constants.dart';
import '../shell/admin_shell.dart';
import 'cubit/dashboard_cubit.dart';

/// IT Admin dashboard (mockup A01). KPI data is mocked via [DashboardCubit].
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
    context.read<DashboardCubit>().loadKpis();
  }

  @override
  Widget build(BuildContext context) {
    return AdminShell(
      title: context.l10n.adminDashboard,
      selectedNavId: 'dashboard',
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.screenPadding),
        child:
            BlocSelector<
              DashboardCubit,
              DashboardState,
              NetworkState<DashboardKpis>
            >(
              selector: (state) => state.kpis,
              builder: (context, kpis) {
                return switch (kpis) {
                  Idle() ||
                  Loading() => const Center(child: CircularProgressIndicator()),
                  Success(:final data) => _KpiRow(kpis: data),
                  Error(:final message) => Center(child: Text(message)),
                };
              },
            ),
      ),
    );
  }
}

class _KpiRow extends StatelessWidget {
  const _KpiRow({required this.kpis});

  final DashboardKpis kpis;

  @override
  Widget build(BuildContext context) {
    final cards = <(String, int, Color)>[
      ('Total devices', kpis.totalDevices, context.appColors.textPrimary),
      ('Assigned', kpis.assigned, context.appColors.successFg),
      ('Pending requests', kpis.pendingRequests, context.appColors.warningFg),
      ('Open support', kpis.openSupport, context.appColors.errorFg),
    ];
    return Wrap(
      spacing: 14,
      runSpacing: 14,
      children: [
        for (final (label, value, color) in cards)
          _KpiCard(label: label, value: value, color: color),
      ],
    );
  }
}

class _KpiCard extends StatelessWidget {
  const _KpiCard({
    required this.label,
    required this.value,
    required this.color,
  });

  final String label;
  final int value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: context.appColors.borderSubtle),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: context.appTextStyles.bodySmall),
          const Gap(8),
          Text(
            '$value',
            style: context.appTextStyles.h1.copyWith(
              color: color,
              fontSize: 26,
            ),
          ),
        ],
      ),
    );
  }
}
