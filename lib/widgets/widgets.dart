/// Barrel export for the shared widget library.
///
/// `lib/widgets/` is a fifth shared root (alongside `models/`,
/// `repositories/`, `utilities/`, `values/`) importable by both
/// `modules/mobile/` and `modules/admin/`. It must never import from either
/// module, and never imports domain enums from `values/enumeration/` —
/// callers map their own domain vocabulary onto [AppSemantic] themselves.
library;

export 'widget_enums.dart';

export 'buttons/app_button.dart';
export 'buttons/app_icon_button.dart';
export 'buttons/app_text_link.dart';
export 'buttons/pill_action_button.dart';

export 'inputs/app_text_field.dart';
export 'inputs/app_search_field.dart';
export 'inputs/app_switch.dart';
export 'inputs/filter_dropdown_chip.dart';
export 'inputs/filter_pill_tabs.dart';
export 'inputs/picker_field.dart';
export 'inputs/segmented_control.dart';

export 'indicators/app_avatar.dart';
export 'indicators/icon_box.dart';
export 'indicators/notification_bell.dart';
export 'indicators/priority_tag.dart';
export 'indicators/progress_bar.dart';
export 'indicators/status_pill.dart';

export 'cards/app_card.dart';
export 'cards/info_rows_card.dart';
export 'cards/list_item_card.dart';
export 'cards/list_item_card_skeleton.dart';
export 'cards/request_card.dart';
export 'cards/stat_tile.dart';
export 'cards/suggestion_card.dart';

export 'feedback/app_toast.dart';
export 'feedback/empty_state_view.dart';
export 'feedback/error_state_view.dart';
export 'feedback/inline_alert.dart';
export 'feedback/network_state_view.dart';
export 'feedback/shimmer_box.dart';
export 'feedback/sliver_skeleton_list.dart';

export 'data_table/app_data_table.dart';
export 'data_table/table_column.dart';
export 'data_table/table_pagination.dart';

export 'surfaces/qr_display.dart';
export 'surfaces/vertical_timeline.dart';

export 'nav/app_bottom_nav.dart';
export 'nav/app_side_nav.dart';
export 'nav/gradient_header.dart';
export 'nav/nav_item.dart';
