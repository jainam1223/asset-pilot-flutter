import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../repositories/remote_repository/common/models/item_category_res_dm.dart';
import '../../../../repositories/remote_repository/common/models/request_res_dm.dart';
import '../../../../repositories/remote_repository/request/models/create_request_req_dm.dart';
import '../../../../repositories/remote_repository/request/request_repository.dart';
import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../utilities/network/safe_emit.dart';
import '../../../../values/enumeration/statuses.dart';

part 'create_request_state.dart';

/// Drives the Request Device screen (mockup E04): loads the category
/// picker, holds form input, and submits `POST /me/requests`.
class CreateRequestCubit extends Cubit<CreateRequestState> {
  CreateRequestCubit() : super(const CreateRequestState()) {
    fetchCategories();
  }

  Future<void> fetchCategories() async {
    safeEmit(state.copyWith(categories: const Loading()));
    try {
      final result = await RequestRepository.instance.getItemCategories();
      result.when(
        success: (data) => safeEmit(
          state.copyWith(
            categories: Success(data),
            selectedCategory: data.firstOrNull,
          ),
        ),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(categories: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(categories: Error(errorManager.handle(e, st).message)),
      );
    }
  }

  void selectCategory(ItemCategoryResDm category) =>
      safeEmit(state.copyWith(selectedCategory: category));

  void setRequestedFrom(DateTime date) =>
      safeEmit(state.copyWith(requestedFrom: date));

  void setRequestedTo(DateTime date) =>
      safeEmit(state.copyWith(requestedTo: date));

  void selectPriority(RequestPriority priority) =>
      safeEmit(state.copyWith(priority: priority));

  void setIsWfh(bool value) => safeEmit(state.copyWith(isWfh: value));

  void setNote(String value) => safeEmit(state.copyWith(note: value));

  Future<void> submit() async {
    final category = state.selectedCategory;
    final from = state.requestedFrom;
    final to = state.requestedTo;
    if (category == null || from == null || to == null) return;

    safeEmit(state.copyWith(submit: const Loading()));
    try {
      final result = await RequestRepository.instance.createRequest(
        CreateRequestReqDm(
          categoryId: category.id,
          requestedFrom: from,
          requestedTo: to,
          priority: state.priority.wireValue,
          note: state.note.trim().isEmpty ? null : state.note.trim(),
          isWfh: state.isWfh,
        ),
      );
      result.when(
        success: (data) => safeEmit(state.copyWith(submit: Success(data))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(submit: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(submit: Error(errorManager.handle(e, st).message)),
      );
    }
  }
}

extension on RequestPriority {
  String get wireValue => switch (this) {
    RequestPriority.low => 'low',
    RequestPriority.medium => 'medium',
    RequestPriority.high => 'high',
  };
}
