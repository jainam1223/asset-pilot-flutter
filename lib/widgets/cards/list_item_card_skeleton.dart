import 'package:flutter/material.dart';

import '../feedback/shimmer_box.dart';
import 'app_card.dart';

/// Shimmer placeholder shaped like [ListItemCard] — leading icon box,
/// title/trailing-pill row, subtitle, meta line. Use while a list's data is
/// loading so the skeleton doesn't jump once real content replaces it.
class ListItemCardSkeleton extends StatelessWidget {
  const ListItemCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppCard(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerBox(width: 46, height: 46, borderRadius: 12),
          SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShimmerBox(width: 120, height: 14),
                    ShimmerBox(width: 60, height: 18, borderRadius: 20),
                  ],
                ),
                SizedBox(height: 8),
                ShimmerBox(width: 70, height: 11),
                SizedBox(height: 12),
                ShimmerBox(width: 140, height: 11),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
