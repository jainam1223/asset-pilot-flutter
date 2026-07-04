import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import '../cards/app_card.dart';

/// Text field that filters [options] as the user types and shows matches in
/// an anchored overlay list — e.g. "search employees by name". Domain-blind:
/// callers supply [options], [displayStringFor], and [onSelected]; the
/// widget only owns the type-ahead/overlay mechanics.
class SearchableDropdownField<T extends Object> extends StatefulWidget {
  const SearchableDropdownField({
    super.key,
    required this.label,
    required this.options,
    required this.displayStringFor,
    required this.onSelected,
    this.initialText = '',
    this.hintText,
    this.enabled = true,
  });

  final String label;
  final List<T> options;
  final String Function(T option) displayStringFor;
  final ValueChanged<T> onSelected;
  final String initialText;
  final String? hintText;
  final bool enabled;

  @override
  State<SearchableDropdownField<T>> createState() =>
      _SearchableDropdownFieldState<T>();
}

class _SearchableDropdownFieldState<T extends Object>
    extends State<SearchableDropdownField<T>> {
  @override
  Widget build(BuildContext context) {
    return RawAutocomplete<T>(
      initialValue: TextEditingValue(text: widget.initialText),
      displayStringForOption: widget.displayStringFor,
      optionsBuilder: (textEditingValue) {
        final query = textEditingValue.text.trim().toLowerCase();
        if (query.isEmpty) return widget.options;
        return widget.options.where(
          (option) => widget.displayStringFor(option).toLowerCase().contains(query),
        );
      },
      onSelected: widget.onSelected,
      fieldViewBuilder: (context, controller, focusNode, onFieldSubmitted) {
        return TextField(
          controller: controller,
          focusNode: focusNode,
          enabled: widget.enabled,
          style: context.appTextStyles.bodyLarge.copyWith(
            color: context.appColors.textPrimary,
          ),
          decoration: InputDecoration(
            labelText: widget.label,
            hintText: widget.hintText,
            suffixIcon: const Icon(Icons.search, size: 18),
          ),
        );
      },
      optionsViewBuilder: (context, onSelected, options) {
        final optionsList = options.toList();
        return Align(
          alignment: Alignment.topLeft,
          child: Material(
            color: Colors.transparent,
            child: AppCard(
              padding: EdgeInsets.zero,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 240),
                child: optionsList.isEmpty
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 12,
                        ),
                        child: Text(
                          context.l10n.searchNoResults,
                          style: context.appTextStyles.bodyMedium.copyWith(
                            color: context.appColors.textTertiary,
                          ),
                        ),
                      )
                    : ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: optionsList.length,
                        itemBuilder: (context, index) {
                          final option = optionsList[index];
                          return ListTile(
                            title: Text(
                              widget.displayStringFor(option),
                              style: context.appTextStyles.labelXLarge,
                            ),
                            onTap: () => onSelected(option),
                          );
                        },
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}
