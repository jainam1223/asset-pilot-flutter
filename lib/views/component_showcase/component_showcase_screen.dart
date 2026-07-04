import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import '../../utilities/helpers/responsive.dart';
import '../../widgets/widgets.dart';

/// Demonstrates every widget in `lib/widgets/` in one screen, across both
/// the mobile and admin variants — a manual visual check that the shared
/// component library renders correctly and adapts sensibly per platform.
///
/// Not part of the production navigation graph; reachable only via the
/// temporary `/showcase` route added for this verification pass.
class ComponentShowcaseScreen extends StatefulWidget {
  const ComponentShowcaseScreen({super.key});

  @override
  State<ComponentShowcaseScreen> createState() =>
      _ComponentShowcaseScreenState();
}

class _ComponentShowcaseScreenState extends State<ComponentShowcaseScreen> {
  bool _wfhToggle = true;
  String _priority = 'medium';
  String _borrowerTab = 'borrower';
  String _filterTab = 'all';
  int _currentPage = 1;
  bool _isLoading = false;

  static const _tableRows = [
    ('#2041', 'Arjun Mehta', 'Laptop', RequestStatusDemo.pendingIt, false),
    (
      '#2040',
      'Ravi Sharma',
      'Monitor',
      RequestStatusDemo.pendingManager,
      false,
    ),
    ('#2039', 'Meera Iyer', 'Mobile', RequestStatusDemo.assigned, true),
    ('#2038', 'Neha Kapoor', 'Accessory', RequestStatusDemo.completed, false),
    ('#2037', 'Karan Shah', 'Laptop', RequestStatusDemo.rejected, false),
  ];

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return Scaffold(
      backgroundColor: context.appColors.scaffoldAlt,
      appBar: AppBar(title: const Text('Component Showcase')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(isMobile ? 16 : 32),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _section('Buttons', _buildButtons()),
              _section(
                'Icon buttons & text links',
                _buildIconButtonsAndLinks(),
              ),
              _section('Status pills & priority tags', _buildBadges()),
              _section('Avatars', _buildAvatars()),
              _section('Icon boxes', _buildIconBoxes()),
              _section('Progress bar', _buildProgressBar()),
              _section('Text fields', _buildTextFields()),
              _section('Picker & search fields', _buildPickerAndSearch()),
              _section(
                'Toggle, segmented control & filter chips',
                _buildToggleAndSegments(),
              ),
              _section('Filter pill tabs', _buildFilterTabs()),
              _section('Cards', _buildCards()),
              _section('Stat tiles (responsive row)', _buildStatTiles()),
              _section('Inline alerts', _buildAlerts()),
              _section('Toasts', _buildToastTriggers()),
              _section('Data table (paginated)', _buildPaginatedTable()),
              _section('Data table (no pagination)', _buildStaticTable()),
              _section('QR display', _buildQrDisplays()),
              _section('Vertical timeline', _buildTimeline()),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _section(String title, Widget child) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: context.appTextStyles.h2),
          const SizedBox(height: 14),
          child,
        ],
      ),
    );
  }

  Widget _buildButtons() {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        AppButton(label: 'Primary', onPressed: () {}),
        AppButton(
          label: 'Secondary',
          variant: AppButtonVariant.secondary,
          onPressed: () {},
        ),
        AppButton(
          label: 'Destructive',
          variant: AppButtonVariant.destructive,
          onPressed: () {},
        ),
        AppButton(
          label: 'Success',
          variant: AppButtonVariant.success,
          onPressed: () {},
        ),
        AppButton(
          label: _isLoading ? 'Loading…' : 'Toggle loading',
          isLoading: _isLoading,
          onPressed: () => setState(() => _isLoading = !_isLoading),
        ),
        const AppButton(label: 'Disabled', onPressed: null),
        const AppButton(
          label: 'Small',
          size: AppButtonSize.small,
          onPressed: null,
        ),
        PillActionButton(label: 'Assign', onPressed: () {}),
        PillActionButton(
          label: 'Reject',
          variant: AppButtonVariant.destructive,
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildIconButtonsAndLinks() {
    return Wrap(
      spacing: 14,
      runSpacing: 12,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        AppIconButton(icon: Icons.edit_outlined, onPressed: () {}),
        AppIconButton(
          icon: Icons.close,
          variant: AppButtonVariant.destructive,
          onPressed: () {},
        ),
        AppIconButton(
          icon: Icons.check,
          variant: AppButtonVariant.primary,
          shape: AppIconButtonShape.square,
          onPressed: () {},
        ),
        AppTextLink(label: 'Forgot password?', onPressed: () {}),
        AppTextLink(
          label: 'View all',
          trailingIcon: Icons.arrow_forward,
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildBadges() {
    return const Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        StatusPill(semantic: AppSemantic.success, label: 'Assigned'),
        StatusPill(semantic: AppSemantic.warning, label: 'Pending IT'),
        StatusPill(semantic: AppSemantic.danger, label: 'Rejected'),
        StatusPill(semantic: AppSemantic.info, label: 'In transit'),
        StatusPill(semantic: AppSemantic.brand, label: 'Active handover'),
        StatusPill(semantic: AppSemantic.neutral, label: 'Completed'),
        StatusPill(
          semantic: AppSemantic.success,
          label: 'Assigned',
          dense: true,
        ),
        SizedBox(width: 8),
        PriorityTag(semantic: AppSemantic.danger, label: 'High'),
        PriorityTag(semantic: AppSemantic.brand, label: 'Medium'),
        PriorityTag(semantic: AppSemantic.neutral, label: 'Low'),
      ],
    );
  }

  Widget _buildAvatars() {
    return const Wrap(
      spacing: 14,
      runSpacing: 14,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        AppAvatar(name: 'Arjun Mehta', size: AppAvatarSize.xs),
        AppAvatar(name: 'Ravi Sharma', size: AppAvatarSize.sm),
        AppAvatar(name: 'Meera Iyer', size: AppAvatarSize.md),
        AppAvatar(name: 'Priya Nair', size: AppAvatarSize.lg),
      ],
    );
  }

  Widget _buildIconBoxes() {
    return const Wrap(
      spacing: 14,
      runSpacing: 14,
      children: [
        IconBox(icon: Icons.laptop_mac_outlined),
        IconBox(
          icon: Icons.monitor_outlined,
          semantic: AppSemantic.warning,
          size: IconBoxSize.lg,
        ),
        IconBox(icon: Icons.headphones_outlined, semantic: AppSemantic.danger),
      ],
    );
  }

  Widget _buildProgressBar() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppProgressBar(
          label: 'Assigned',
          value: 0.73,
          valueLabel: '611',
          semantic: AppSemantic.brand,
        ),
        SizedBox(height: 12),
        AppProgressBar(
          label: 'Under repair',
          value: 0.09,
          valueLabel: '34',
          semantic: AppSemantic.danger,
        ),
      ],
    );
  }

  Widget _buildTextFields() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppTextField(label: 'Work email', leadingIcon: Icons.email_outlined),
        SizedBox(height: 14),
        AppTextField(label: 'Password', obscureText: true),
        SizedBox(height: 14),
        AppTextField(
          label: 'Email (error state)',
          errorText: 'Incorrect email or password.',
        ),
        SizedBox(height: 14),
        AppTextField.multiline(
          label: 'Note (optional)',
          hintText: 'Current laptop battery is failing…',
        ),
      ],
    );
  }

  Widget _buildPickerAndSearch() {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: [
        SizedBox(
          width: 220,
          child: PickerField(label: 'From', valueText: '15 Jul', onTap: () {}),
        ),
        const AppSearchField(hintText: 'Search devices, people…', width: 260),
      ],
    );
  }

  Widget _buildToggleAndSegments() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppSwitch(
          label: 'Work from home',
          value: _wfhToggle,
          onChanged: (v) => setState(() => _wfhToggle = v),
        ),
        const SizedBox(height: 16),
        SegmentedControl<String>(
          value: _priority,
          onChanged: (v) => setState(() => _priority = v),
          options: const [
            SegmentOption(
              value: 'low',
              label: 'Low',
              selectedSemantic: AppSemantic.neutral,
            ),
            SegmentOption(
              value: 'medium',
              label: 'Medium',
              selectedSemantic: AppSemantic.brand,
            ),
            SegmentOption(
              value: 'high',
              label: 'High',
              selectedSemantic: AppSemantic.danger,
            ),
          ],
        ),
        const SizedBox(height: 16),
        SegmentedControl<String>(
          value: _borrowerTab,
          onChanged: (v) => setState(() => _borrowerTab = v),
          options: const [
            SegmentOption(value: 'borrower', label: 'As Borrower'),
            SegmentOption(value: 'owner', label: 'As Owner'),
          ],
        ),
        const SizedBox(height: 16),
        FilterDropdownChip(label: 'Priority', valueLabel: 'All', onTap: () {}),
      ],
    );
  }

  Widget _buildFilterTabs() {
    return FilterPillTabs(
      selectedId: _filterTab,
      onChanged: (id) => setState(() => _filterTab = id),
      tabs: const [
        PillTab(id: 'all', label: 'All', count: 312),
        PillTab(id: 'pendingRm', label: 'Pending RM', count: 12),
        PillTab(id: 'pendingIt', label: 'Pending IT', count: 16),
        PillTab(id: 'assigned', label: 'Assigned'),
        PillTab(id: 'rejected', label: 'Rejected'),
      ],
    );
  }

  Widget _buildCards() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListItemCard(
          leading: const IconBox(icon: Icons.laptop_mac_outlined),
          title: 'MacBook Pro 16" M3',
          subtitle: 'Laptop',
          trailing: const StatusPill(
            semantic: AppSemantic.success,
            label: 'Assigned',
            dense: true,
          ),
          meta: const MetaEntry(
            icon: Icons.calendar_today_outlined,
            label: '04 Feb – 04 Aug 2026',
          ),
          onTap: () {},
        ),
        const SizedBox(height: 12),
        const InfoRowsCard(
          rows: [
            InfoRow(label: 'Assigned from', value: Text('04 Feb 2026')),
            InfoRow(label: 'Assigned to', value: Text('04 Aug 2026')),
            InfoRow(
              label: 'Setup',
              value: StatusPill(
                semantic: AppSemantic.brand,
                label: 'Work from home',
                dense: true,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        RequestCard(
          avatarName: 'Arjun Mehta',
          title: 'Arjun Mehta',
          statusBadge: const PriorityTag(
            semantic: AppSemantic.danger,
            label: 'High',
          ),
          metaLine: '15 Jul – 15 Jan 2026',
          note: "Current laptop battery is failing before client demo…",
          actions: [
            AppButton(
              label: 'Reject',
              variant: AppButtonVariant.destructive,
              onPressed: () {},
            ),
            AppButton(
              label: 'Approve',
              variant: AppButtonVariant.success,
              onPressed: () {},
            ),
          ],
        ),
        const SizedBox(height: 12),
        SuggestionCard(
          rank: 1,
          title: 'MacBook Air 15" M3',
          subtitle:
              'Same M-series performance, lighter and available immediately.',
          recommended: true,
          onSelect: () {},
        ),
        const SizedBox(height: 10),
        SuggestionCard(
          rank: 2,
          title: 'Dell XPS 15 (2025)',
          subtitle: 'Comparable RAM & SSD if you prefer Windows.',
          onSelect: () {},
        ),
      ],
    );
  }

  Widget _buildStatTiles() {
    return const StatTileRow(
      tiles: [
        StatTile(label: 'Total devices', value: '842'),
        StatTile(
          label: 'Assigned',
          value: '611',
          semantic: AppSemantic.success,
        ),
        StatTile(
          label: 'Pending requests',
          value: '28',
          semantic: AppSemantic.warning,
        ),
        StatTile(
          label: 'Open support',
          value: '14',
          semantic: AppSemantic.danger,
        ),
      ],
    );
  }

  Widget _buildAlerts() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InlineAlert(
          semantic: AppSemantic.brand,
          message: 'Laptops need manager approval before reaching IT.',
        ),
        SizedBox(height: 10),
        InlineAlert(
          semantic: AppSemantic.warning,
          message: 'Overlaps an existing booking in Nov.',
        ),
        SizedBox(height: 10),
        InlineAlert(
          semantic: AppSemantic.success,
          message:
              'The device enters return shipping and stays assigned to you until IT confirms receipt.',
        ),
        SizedBox(height: 10),
        InlineAlert(
          semantic: AppSemantic.danger,
          message:
              'Deactivation is blocked when a user has active devices or open requests.',
        ),
      ],
    );
  }

  Widget _buildToastTriggers() {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: [
        AppButton(
          label: 'Show success toast',
          size: AppButtonSize.small,
          onPressed: () =>
              AppToast.success(context, 'Request submitted successfully.'),
        ),
        AppButton(
          label: 'Show error toast',
          size: AppButtonSize.small,
          variant: AppButtonVariant.destructive,
          onPressed: () =>
              AppToast.error(context, 'Something went wrong. Try again.'),
        ),
        AppButton(
          label: 'Show info toast',
          size: AppButtonSize.small,
          variant: AppButtonVariant.secondary,
          onPressed: () => AppToast.info(
            context,
            'Your request is pending manager approval.',
          ),
        ),
        AppButton(
          label: 'Show warning toast',
          size: AppButtonSize.small,
          variant: AppButtonVariant.secondary,
          onPressed: () =>
              AppToast.warning(context, 'This overlaps an existing booking.'),
        ),
      ],
    );
  }

  Widget _buildPaginatedTable() {
    return AppDataTable<(String, String, String, RequestStatusDemo, bool)>(
      rows: _tableRows,
      isRowSelected: (row) => row.$5,
      pagination: TablePagination(
        currentPage: _currentPage,
        totalItems: 312,
        pageSize: 6,
        onPageChanged: (page) => setState(() => _currentPage = page),
      ),
      columns: [
        TableColumn(
          header: 'ID',
          width: 70,
          cellBuilder: (context, row) => Text(
            row.$1,
            style: TextStyle(
              color: context.appColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        TableColumn(
          header: 'Employee',
          flex: 2,
          cellBuilder: (context, row) => Text(row.$2),
        ),
        TableColumn(
          header: 'Category',
          cellBuilder: (context, row) => Text(row.$3),
        ),
        TableColumn(
          header: 'Status',
          cellBuilder: (context, row) => switch (row.$4) {
            RequestStatusDemo.pendingIt => const StatusPill(
              semantic: AppSemantic.warning,
              label: 'Pending IT',
              dense: true,
            ),
            RequestStatusDemo.pendingManager => const StatusPill(
              semantic: AppSemantic.neutral,
              label: 'Pending RM',
              dense: true,
            ),
            RequestStatusDemo.assigned => const StatusPill(
              semantic: AppSemantic.success,
              label: 'Assigned',
              dense: true,
            ),
            RequestStatusDemo.completed => const StatusPill(
              semantic: AppSemantic.neutral,
              label: 'Completed',
              dense: true,
            ),
            RequestStatusDemo.rejected => const StatusPill(
              semantic: AppSemantic.danger,
              label: 'Rejected',
              dense: true,
            ),
          },
        ),
        TableColumn(
          header: 'Actions',
          width: 90,
          cellBuilder: (context, row) => PillActionButton(
            label: 'View',
            variant: AppButtonVariant.secondary,
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Widget _buildStaticTable() {
    return AppDataTable<(String, String)>(
      rows: const [
        ('MacBook Pro 16" M3', 'Laptop'),
        ('iPhone 15 Pro', 'Mobile'),
        ('Dell UltraSharp U2723QE', 'Monitor'),
      ],
      columns: [
        TableColumn(
          header: 'Device',
          flex: 2,
          cellBuilder: (context, row) => Text(row.$1),
        ),
        TableColumn(
          header: 'Category',
          cellBuilder: (context, row) => Text(row.$2),
        ),
      ],
      emptyState: const Text('No devices'),
    );
  }

  Widget _buildQrDisplays() {
    Widget qrPattern() =>
        Container(color: context.appColors.primaryDeep.withValues(alpha: 0.08));
    return Wrap(
      spacing: 24,
      runSpacing: 24,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: [
        SizedBox(
          width: 320,
          child: QrDisplay(
            qrImage: qrPattern(),
            token: 'DVQR-8F3A-22K9',
            tokenLabel: 'Token',
            title: 'Scan to verify',
          ),
        ),
        SizedBox(
          width: 220,
          child: QrDisplay(
            qrImage: qrPattern(),
            token: 'DVQR-8F3A-22K9',
            tokenLabel: 'Token',
            title: 'MacBook Pro 16" M3',
            subtitle: 'SN C02XL0ANJGH7',
            large: true,
            onPrint: () => AppToast.info(context, 'Printing…'),
            printLabel: 'Print this QR',
          ),
        ),
      ],
    );
  }

  Widget _buildTimeline() {
    return const VerticalTimeline(
      entries: [
        TimelineEntry(
          title: 'Assigned to Arjun Mehta',
          timestamp: '04 Feb 2026 · 10:12',
          description:
              'Actor: IT Admin · from available → assigned · request #2018',
        ),
        TimelineEntry(
          title: 'Shipped to home address',
          timestamp: '05 Feb 2026 · 14:40',
          description: 'Actor: IT Admin · tracking bluedart.in/track/7729-A',
          semantic: AppSemantic.info,
        ),
        TimelineEntry(
          title: 'Delivery confirmed',
          timestamp: '08 Feb 2026 · 09:05',
          description: 'Actor: Arjun Mehta · device in use',
          semantic: AppSemantic.success,
        ),
      ],
    );
  }
}

enum RequestStatusDemo {
  pendingIt,
  pendingManager,
  assigned,
  completed,
  rejected,
}
