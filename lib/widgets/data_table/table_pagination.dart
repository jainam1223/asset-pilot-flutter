/// Pagination config for [AppDataTable]. Passing `null` for
/// `AppDataTable.pagination` renders no footer at all — this class only
/// exists for the paginated case.
class TablePagination {
  const TablePagination({
    required this.currentPage,
    required this.totalItems,
    required this.pageSize,
    required this.onPageChanged,
  });

  /// 1-indexed current page.
  final int currentPage;
  final int totalItems;
  final int pageSize;
  final void Function(int page) onPageChanged;

  int get pageCount => (totalItems / pageSize).ceil().clamp(1, 1 << 30);

  int get rangeStart => totalItems == 0 ? 0 : (currentPage - 1) * pageSize + 1;

  int get rangeEnd => (currentPage * pageSize).clamp(0, totalItems);
}
