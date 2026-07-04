import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../../repositories/remote_repository/common/models/device_by_qr_res_dm.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/navigation/app_routes.dart';
import '../../../utilities/network/network_state.dart';
import '../../../values/app_theme/app_colors.dart';
import '../../../widgets/widgets.dart';
import 'cubit/handover_scan_cubit.dart';

/// Handover · Scan/Pick screen (mockup E12) — the entry point to raising a
/// handover request. Scans a device's QR via camera, or falls back to a
/// search field ("Pick from list"); both paths resolve a [DeviceByQrResDm]
/// and push Request Handover (mockup E13) with it.
class HandoverScanScreen extends StatefulWidget {
  const HandoverScanScreen({super.key});

  @override
  State<HandoverScanScreen> createState() => _HandoverScanScreenState();
}

class _HandoverScanScreenState extends State<HandoverScanScreen> {
  final _scannerController = MobileScannerController();
  bool _handled = false;

  @override
  void dispose() {
    _scannerController.dispose();
    super.dispose();
  }

  void _onDetect(BuildContext context, BarcodeCapture capture) {
    if (_handled) return;
    final token = capture.barcodes.firstOrNull?.rawValue;
    if (token == null || token.isEmpty) return;
    _handled = true;
    context.read<HandoverScanCubit>().resolveQrCode(token);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HandoverScanCubit, HandoverScanState>(
      listenWhen: (previous, current) => previous.resolve != current.resolve,
      listener: (context, state) {
        switch (state.resolve) {
          case Success(:final data):
            context.push(Routes.requestHandover.path, extra: data);
          case Error(:final message):
            AppToast.error(context, message);
            _handled = false;
            context.read<HandoverScanCubit>().reset();
          case Idle() || Loading():
            break;
        }
      },
      builder: (context, state) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Scaffold(
            backgroundColor: AppColors.deviceDark,
            body: Column(
              children: [
                Expanded(
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      MobileScanner(
                        controller: _scannerController,
                        onDetect: (capture) => _onDetect(context, capture),
                      ),
                      Container(color: Colors.black.withValues(alpha: 0.25)),
                      _ScanHeader(onBack: () => context.pop()),
                      const Center(child: _ScanFrame()),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 40,
                        child: Text(
                          context.l10n.handoverScanPrompt,
                          textAlign: TextAlign.center,
                          style: context.appTextStyles.bodySmall.copyWith(
                            color: Colors.white.withValues(alpha: 0.75),
                          ),
                        ),
                      ),
                      if (state.resolve.isLoading)
                        const ColoredBox(
                          color: Colors.black45,
                          child: Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                _PickFromListPanel(isLoading: state.resolve.isLoading),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _ScanHeader extends StatelessWidget {
  const _ScanHeader({required this.onBack});

  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.paddingOf(context).top + 12,
      left: 20,
      right: 20,
      child: Row(
        children: [
          AppIconButton(
            icon: Icons.arrow_back,
            variant: AppButtonVariant.primary,
            onPressed: onBack,
          ),
          const SizedBox(width: 14),
          Text(
            context.l10n.handoverTitle,
            style: context.appTextStyles.labelXLarge.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class _ScanFrame extends StatelessWidget {
  const _ScanFrame();

  @override
  Widget build(BuildContext context) {
    const size = 210.0;
    const cornerSize = 38.0;
    const cornerWidth = 4.0;
    const color = AppColors.errorAccent;

    Widget corner({required Alignment alignment}) {
      final isTop = alignment.y < 0;
      final isLeft = alignment.x < 0;
      return Align(
        alignment: alignment,
        child: SizedBox(
          width: cornerSize,
          height: cornerSize,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: isTop && isLeft
                    ? const Radius.circular(14)
                    : Radius.zero,
                topRight: isTop && !isLeft
                    ? const Radius.circular(14)
                    : Radius.zero,
                bottomLeft: !isTop && isLeft
                    ? const Radius.circular(14)
                    : Radius.zero,
                bottomRight: !isTop && !isLeft
                    ? const Radius.circular(14)
                    : Radius.zero,
              ),
              border: Border(
                top: isTop
                    ? const BorderSide(color: color, width: cornerWidth)
                    : BorderSide.none,
                bottom: !isTop
                    ? const BorderSide(color: color, width: cornerWidth)
                    : BorderSide.none,
                left: isLeft
                    ? const BorderSide(color: color, width: cornerWidth)
                    : BorderSide.none,
                right: !isLeft
                    ? const BorderSide(color: color, width: cornerWidth)
                    : BorderSide.none,
              ),
            ),
          ),
        ),
      );
    }

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.25),
                width: 2,
              ),
            ),
          ),
          corner(alignment: Alignment.topLeft),
          corner(alignment: Alignment.topRight),
          corner(alignment: Alignment.bottomLeft),
          corner(alignment: Alignment.bottomRight),
        ],
      ),
    );
  }
}

class _PickFromListPanel extends StatelessWidget {
  const _PickFromListPanel({required this.isLoading});

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 22, 20, 30),
      decoration: BoxDecoration(
        color: context.appColors.scaffoldAlt,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(26)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Divider(color: context.appColors.border),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  context.l10n.handoverScanOr,
                  style: context.appTextStyles.bodySmall.copyWith(
                    color: context.appColors.textTertiary,
                  ),
                ),
              ),
              Expanded(
                child: Divider(color: context.appColors.border),
              ),
            ],
          ),
          const SizedBox(height: 16),
          AppSearchField(
            hintText: context.l10n.handoverSearchHint,
            onChanged: (_) {},
          ),
          const SizedBox(height: 16),
          AppButton(
            label: context.l10n.handoverPickFromList,
            expand: true,
            isLoading: isLoading,
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
