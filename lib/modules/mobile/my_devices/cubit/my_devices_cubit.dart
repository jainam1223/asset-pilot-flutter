import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../repositories/remote_repository/common/models/item_res_dm.dart';
import '../../../../repositories/remote_repository/device/device_repository.dart';
import '../../../../repositories/remote_repository/request/request_repository.dart';
import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../utilities/network/safe_emit.dart';

part 'my_devices_state.dart';

/// Drives the My Devices screen (mockup E02).
class MyDevicesCubit extends Cubit<MyDevicesState> {
  MyDevicesCubit() : super(const MyDevicesState()) {
    fetchMyDevices();
  }

  Future<void> fetchMyDevices() async {
    safeEmit(state.copyWith(devices: const Loading()));
    try {
      final devicesResult = await DeviceRepository.instance.getMyDevices();
      await devicesResult.when(
        success: (items) async {
          final categoriesResult = await RequestRepository.instance
              .getItemCategories();
          final categoryNames = categoriesResult.when(
            success: (categories) => {
              for (final category in categories) category.id: category.name,
            },
            failure: (_) => const <String, String>{},
          );
          safeEmit(
            state.copyWith(
              devices: Success([
                for (final item in items)
                  MyDevice(
                    item: item,
                    categoryName: categoryNames[item.categoryId] ?? '',
                  ),
              ]),
            ),
          );
        },
        failure: (error) async {
          errorManager.handle(error);
          safeEmit(state.copyWith(devices: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(devices: Error(errorManager.handle(e, st).message)),
      );
    }
  }
}
