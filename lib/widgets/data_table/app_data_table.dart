import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import '../../values/constants/app_constants.dart';
import 'table_column.dart';
import 'table_pagination.dart';

/// One generic data table for every admin table instance in the app
/// (dashboard "Recent Requests", Request Management, Inventory, Support
/// Requests, Shipping/Returns, Maintenance, Extension Requests, Handovers
/// audit, QR Management, Settings/Users).
///
/// Zero domain knowledge: columns are supplied by the caller via
/// [TableColumn.cellBuilder], so the table never imports a domain model.
/// Pagination is fully optional — the footer only renders when
/// [pagination] is non-null; a `null` pagination produces a plain static
/// list (e.g. the dashboard's short "Recent Requests" widget).
class AppDataTable<T> extends StatelessWidget {
  const AppDataTable({
    super.key,
    required this.columns,
    required this.rows,
    this.pagination,
    this.isRowSelected,
    this.onRowTap,
    this.emptyState,
  });

  final List<TableColumn<T>> columns;
  final List<T> rows;

  /// Null => no pagination footer, just header + rows.
  final TablePagination? pagination;

  /// Tints a row's background when true (e.g. QR management's
  /// checkbox-selected row). Defaults to no selection.
  final bool Function(T row)? isRowSelected;

  final void Function(T row)? onRowTap;
  final Widget? emptyState;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.appColors.surface,
        borderRadius: BorderRadius.circular(AppConstants.cardRadius),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              final table = _buildTable(context, constraints.maxWidth);
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: constraints.maxWidth),
                  child: table,
                ),
              );
            },
          ),
          if (pagination != null) _PaginationFooter(pagination: pagination!),
        ],
      ),
    );
  }

  Widget _buildTable(BuildContext context, double minWidth) {
    if (rows.isEmpty) {
      return SizedBox(
        width: minWidth,
        child: Column(
          children: [
            _HeaderRow(columns: columns),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: emptyState ?? const SizedBox.shrink(),
            ),
          ],
        ),
      );
    }

    return SizedBox(
      width: minWidth,
      child: Column(
        children: [
          _HeaderRow(columns: columns),
          for (var i = 0; i < rows.length; i++)
            _BodyRow<T>(
              columns: columns,
              row: rows[i],
              isFirst: i == 0,
              selected: isRowSelected?.call(rows[i]) ?? false,
              onTap: onRowTap == null ? null : () => onRowTap!(rows[i]),
            ),
        ],
      ),
    );
  }
}

class _HeaderRow extends StatelessWidget {
  const _HeaderRow({required this.columns});

  final List<TableColumn> columns;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.scaffoldLight,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      child: Row(
        children: [
          for (final column in columns)
            _ColumnBox(
              column: column,
              child: Text(
                column.header.toUpperCase(),
                style: context.appTextStyles.overline.copyWith(
                  color: context.appColors.textTertiary,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _BodyRow<T> extends StatelessWidget {
  const _BodyRow({
    required this.columns,
    required this.row,
    required this.isFirst,
    required this.selected,
    this.onTap,
  });

  final List<TableColumn<T>> columns;
  final T row;
  final bool isFirst;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final content = Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        color: selected ? context.appColors.surfaceMuted : null,
        border: isFirst
            ? null
            : Border(top: BorderSide(color: context.appColors.divider)),
      ),
      child: Row(
        children: [
          for (final column in columns)
            _ColumnBox(column: column, child: column.cellBuilder(context, row)),
        ],
      ),
    );

    if (onTap == null) return content;
    return InkWell(onTap: onTap, child: content);
  }
}

class _ColumnBox extends StatelessWidget {
  const _ColumnBox({required this.column, required this.child});

  final TableColumn column;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    // Clip whatever the cell builder returns to the column's box — Text
    // widgets don't self-clip inside Expanded/SizedBox, so without this an
    // overflowing cell (e.g. a long status label on a narrow flex column)
    // paints outside its column and visually collides with neighbors.
    final clipped = DefaultTextStyle.merge(
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      child: ClipRect(
        child: Align(
          alignment: column.alignment,
          heightFactor: 1,
          child: child,
        ),
      ),
    );

    if (column.width != null) {
      return Padding(
        padding: const EdgeInsets.only(right: 10),
        child: SizedBox(width: column.width, child: clipped),
      );
    }
    return Expanded(
      flex: column.flex,
      child: Padding(padding: const EdgeInsets.only(right: 10), child: clipped),
    );
  }
}

class _PaginationFooter extends StatelessWidget {
  const _PaginationFooter({required this.pagination});

  final TablePagination pagination;

  @override
  Widget build(BuildContext context) {
    final rangeLabel = Text(
      'Showing ${pagination.rangeStart}–${pagination.rangeEnd} of ${pagination.totalItems}',
      style: context.appTextStyles.emphasisMedium.copyWith(
        color: context.appColors.textTertiary,
      ),
    );

    final pageButtons = SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var page = 1; page <= pagination.pageCount; page++) ...[
            if (page > 1) const SizedBox(width: 6),
            _PageButton(
              page: page,
              selected: page == pagination.currentPage,
              onTap: () => pagination.onPageChanged(page),
            ),
          ],
        ],
      ),
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: context.appColors.divider)),
      ),
      // A horizontally-scrolling page-button row has unbounded intrinsic
      // width, so it can't sit directly in a Wrap/Row; give it the leftover
      // width explicitly via LayoutBuilder instead. Below a width threshold
      // the two pieces stack instead of fighting for the same row.
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 480) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [rangeLabel, const SizedBox(height: 10), pageButtons],
            );
          }
          return Row(
            children: [
              rangeLabel,
              const SizedBox(width: 12),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: pageButtons,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _PageButton extends StatelessWidget {
  const _PageButton({
    required this.page,
    required this.selected,
    required this.onTap,
  });

  final int page;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: 32,
        height: 32,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected
              ? context.appColors.primary
              : context.appColors.surface,
          border: selected
              ? null
              : Border.all(color: context.appColors.borderSubtle),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          '$page',
          style: context.appTextStyles.label.copyWith(
            color: selected ? Colors.white : context.appColors.textSecondary,
          ),
        ),
      ),
    );
  }
}
