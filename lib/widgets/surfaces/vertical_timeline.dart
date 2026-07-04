import 'package:flutter/material.dart';

import '../../values/app_theme/app_colors.dart';
import '../cards/app_card.dart';
import '../widget_enums.dart';

class TimelineEntry {
  const TimelineEntry({
    required this.title,
    required this.timestamp,
    required this.description,
    this.semantic = AppSemantic.brand,
  });

  final String title;
  final String timestamp;
  final String description;
  final AppSemantic semantic;
}

/// Vertical connecting line + colored dot marker per entry, each rendered
/// as an [AppCard] with a title/timestamp header and description body
/// (device audit-trail timeline).
class VerticalTimeline extends StatelessWidget {
  const VerticalTimeline({super.key, required this.entries});

  final List<TimelineEntry> entries;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 9,
          top: 6,
          bottom: 6,
          child: Container(width: 2, color: AppColors.borderSubtle),
        ),
        Column(
          children: [
            for (var i = 0; i < entries.length; i++)
              Padding(
                padding: EdgeInsets.only(bottom: i == entries.length - 1 ? 0 : 22, left: 34),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: -34,
                      top: 2,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: entries[i].semantic.fg,
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.surface, width: 3),
                        ),
                      ),
                    ),
                    AppCard(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  entries[i].title,
                                  style: const TextStyle(
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                              ),
                              Text(
                                entries[i].timestamp,
                                style: const TextStyle(
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  color: AppColors.textTertiary,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Text(
                            entries[i].description,
                            style: const TextStyle(
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              height: 1.5,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }
}
