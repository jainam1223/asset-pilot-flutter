import 'package:flutter/material.dart';

/// Sliver rendering [count] copies of [itemBuilder] with [separator]
/// between them, inside [padding] — a loading placeholder for
/// [SliverList]-based screens (e.g. repeat a [ListItemCardSkeleton] 4x).
class SliverSkeletonList extends StatelessWidget {
  const SliverSkeletonList({
    super.key,
    required this.itemBuilder,
    this.count = 4,
    this.padding = const EdgeInsets.fromLTRB(20, 16, 20, 20),
    this.separator = const SizedBox(height: 13),
  });

  final WidgetBuilder itemBuilder;
  final int count;
  final EdgeInsetsGeometry padding;
  final Widget separator;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: padding,
      sliver: SliverList.separated(
        itemCount: count,
        separatorBuilder: (_, _) => separator,
        itemBuilder: (context, _) => itemBuilder(context),
      ),
    );
  }
}
