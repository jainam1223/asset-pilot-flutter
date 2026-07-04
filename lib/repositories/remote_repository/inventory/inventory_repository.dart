import '../../../models/api_response/api_result.dart';
import '../../../values/enumeration/statuses.dart';
import '../api_repository/api_repository.dart';
import 'models/active_handover_summary_res_dm.dart';
import 'models/current_assignment_res_dm.dart';
import 'models/device_timeline_event_res_dm.dart';
import 'models/inventory_detail_res_dm.dart';
import 'models/inventory_item_res_dm.dart';
import 'models/open_ticket_summary_res_dm.dart';

/// Repository for the admin Inventory Management + Device Detail + Device
/// Timeline screens (mockups A04, A05, A06).
///
/// Singleton via a private constructor + [instance], per convention. NOTE:
/// this scaffold is not wired to a live backend — every method below returns
/// MOCKED data from an in-memory list. When the API is ready, replace the
/// mock body with the real `apiService` call shown in each method's REAL
/// comment.
class InventoryRepository extends Repository {
  InventoryRepository._();

  static final InventoryRepository instance = InventoryRepository._();

  static final List<InventoryItemResDm> _mockInventory = List.generate(
    26,
    (i) {
      const owners = [
        'Arjun Mehta',
        'Ravi Sharma',
        'Meera Iyer',
        'Neha Kapoor',
        'Karan Shah',
        'Divya Rao',
      ];
      const categories = ['Laptop', 'Monitor', 'Mobile', 'Accessory'];
      const clientNames = ['Acme Corp', 'Globex', 'Initech'];
      const statuses = DeviceStatus.values;
      final status = statuses[i % statuses.length];
      final isClient = i % 7 == 3;
      final unassigned = status == DeviceStatus.available ||
          status == DeviceStatus.underRepair ||
          status == DeviceStatus.retired ||
          status == DeviceStatus.lost;
      return InventoryItemResDm(
        id: 'dev_${(1000 + i)}',
        name: '${categories[i % categories.length]} Unit ${i + 1}',
        serial: 'SN-${(1000 + i).toString().padLeft(5, '0')}',
        category: categories[i % categories.length],
        ownerType: isClient ? OwnerType.client : OwnerType.company,
        clientName: isClient ? clientNames[i % clientNames.length] : '',
        status: status,
        currentOwnerName: unassigned ? '' : owners[i % owners.length],
      );
    },
  );

  /// List inventory devices for the admin Inventory Management table (A04),
  /// filtered by the given params. Currently mocked.
  Future<ApiResult<List<InventoryItemResDm>>> fetchInventory({
    String statusFilter = 'all',
    String categoryFilter = 'all',
    String searchQuery = '',
  }) async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    final filtered = _mockInventory.where((item) {
      final matchesStatus =
          statusFilter == 'all' || item.status.name == statusFilter;
      final matchesCategory =
          categoryFilter == 'all' || item.category == categoryFilter;
      final matchesSearch = searchQuery.isEmpty ||
          item.name.toLowerCase().contains(searchQuery.toLowerCase()) ||
          item.serial.toLowerCase().contains(searchQuery.toLowerCase());
      return matchesStatus && matchesCategory && matchesSearch;
    }).toList();
    return ApiSuccess<List<InventoryItemResDm>>(filtered);
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.fetchInventory();
  }

  /// Fetch full detail for a single device (A05). Currently mocked.
  Future<ApiResult<InventoryDetailResDm>> fetchInventoryDetail(
    String id,
  ) async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    final item = _mockInventory.firstWhere(
      (i) => i.id == id,
      orElse: () => _mockInventory.first,
    );
    final isAssigned = item.status == DeviceStatus.assigned;
    return ApiSuccess<InventoryDetailResDm>(
      InventoryDetailResDm(
        id: item.id,
        name: item.name,
        serial: item.serial,
        category: item.category,
        ownerType: item.ownerType,
        clientName: item.clientName,
        status: item.status,
        currentOwnerName: item.currentOwnerName,
        purchaseDate: '12 Jan 2024',
        qrToken: 'DVQR-${item.serial.substring(3)}',
        currentAssignment: isAssigned
            ? CurrentAssignmentResDm(
                requestId: '#${2000 + _mockInventory.indexOf(item)}',
                requesterName: item.currentOwnerName,
                assignedFrom: '04 Feb 2026',
                assignedTo: '04 Aug 2026',
                workFromHome: true,
                shipTracking: 'bluedart.in/track/7729-A',
              )
            : null,
        openTickets: isAssigned
            ? const [
                OpenTicketSummaryResDm(
                  id: '#71',
                  title: 'Install Software',
                  status: SupportStatus.open,
                  raisedOn: '01 Jul 2026',
                ),
              ]
            : const [],
        activeHandover: isAssigned
            ? const ActiveHandoverSummaryResDm(
                borrowerName: 'Karan Shah',
                durationLabel: '24 h',
                status: HandoverStatus.accepted,
              )
            : null,
      ),
    );
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.fetchInventoryDetail(id);
  }

  /// Fetch the append-only audit-trail timeline for a device (A06).
  /// Currently a static mock.
  Future<ApiResult<List<DeviceTimelineEventResDm>>> fetchDeviceTimeline(
    String id,
  ) async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    return const ApiSuccess<List<DeviceTimelineEventResDm>>([
      DeviceTimelineEventResDm(
        id: 'evt_1',
        title: 'Assigned to Arjun Mehta',
        timestamp: '04 Feb 2026 · 10:12',
        actor: 'IT Admin (Sana Q.)',
        description: 'From available → assigned',
        fromStatus: 'available',
        toStatus: 'assigned',
        relatedRequestId: '#2018',
        kind: 'assignment',
      ),
      DeviceTimelineEventResDm(
        id: 'evt_2',
        title: 'Shipped to home address',
        timestamp: '05 Feb 2026 · 14:40',
        actor: 'IT Admin',
        description: 'Tracking bluedart.in/track/7729-A',
        kind: 'shipping',
      ),
      DeviceTimelineEventResDm(
        id: 'evt_3',
        title: 'Delivery confirmed',
        timestamp: '08 Feb 2026 · 09:05',
        actor: 'Arjun Mehta',
        description: 'Device in use',
        kind: 'delivery',
      ),
      DeviceTimelineEventResDm(
        id: 'evt_4',
        title: 'Support ticket opened · Install Software',
        timestamp: '01 Jul 2026 · 11:20',
        actor: 'Arjun Mehta',
        description: 'Docker + Xcode CLI',
        kind: 'support',
      ),
      DeviceTimelineEventResDm(
        id: 'evt_5',
        title: 'Handover accepted · Karan Shah',
        timestamp: '30 Jun 2026 · 16:02',
        actor: 'Arjun Mehta (owner)',
        description: '24 h · status & owner unchanged',
        kind: 'handover',
      ),
    ]);
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.fetchDeviceTimeline(id);
  }
}
